::@ECHO OFF


echo "Minecraft Server Autobackup to Github"
echo "--------------------------------------"
echo ""

:: check for git setup
echo "Checking for git setup..."
echo git
if %git config user.name%=="MMSBGHA" (
	echo "GIT REPO ALREADY SETUP"\
)	else (
	echo "GIT REPO NOT SETUP"
	echo "Switching to MMSBGHA github for this repo..."	
	echo "Switched git username to MMSBGHA for this repo"
	git config user.name "MMSBGHA"
	echo "Switched git email to MMSBPMA@protonmail.com for this repo"
	git config user.email MMSBPMA@protonmail.com
	git config credential.helper store
	git push https://github.com/MMSBGHA/ModdedServerBackup.git
	echo ""
)

echo ""
echo "STARTING BACKUP..."
echo "----------------------"
echo ""

echo "Waiting to backup..."

Set /A "counter = 1"
:while
if (counter) (
	echo "Backing up the server..."
	:: add any changes
	git add *
	:: make new changes a commit and current time and date as commit message
	git commit -m "`date`"
	git push origin master > /dev/null 2>&1
	echo "Server backed up."
	sleep 1h
	Set /A "counter = counter + 1"
	goto :while

)
echo "Backing up ended."
