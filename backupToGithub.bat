@ECHO OFF


echo Minecraft Server Autobackup to Github
echo --------------------------------------

:: check for git setup
echo Checking for git setup...
IF (%1 == "NOOB") (
	echo GIT REPO NOT SETUP
	echo Switching to MMSBGHA github for this repo...	
	echo Switched git username to MMSBGHA for this repo
	git config user.name "MMSBGHA"
	echo Switched git email to MMSBPMA@protonmail.com for this repo
	git config user.email MMSBPMA@protonmail.com
	git config credential.helper store
	git push https://github.com/MMSBGHA/ModdedServerBackup.git
	echo 
) ELSE (echo GIT REPO ALREADY SETUP)

echo ----------------------
echo STARTING BACKUP...
echo ----------------------

echo Waiting to backup...

:whileLoopStart
if (1 LEQ 1) (
	echo Backing up the server...
	:: add any changes
	git add *
	:: make new changes a commit and current time and date as commit message
	git commit -m "`date`"
	git push origin master > /dev/null 2>&1
	echo Server backed up.
	:: 1h = 60min = 3600sec
	timeout /t 3600 /nobreak
	goto :whileLoopStart

)
echo Backing up ended.
