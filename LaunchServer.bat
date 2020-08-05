@ECHO OFF

:: When setting the memory below make sure to include the amount of ram letter. M = MB, G = GB. Don't use 1GB for example, it's 1G ::

:: This is 64-bit memory ::
set memsixtyfour=8G

:: This is 32-bit memory - maximum 1.2G ish::
set memthirtytwo=1G

:: Don't edit past this point ::

if $SYSTEM_os_arch==x86 (
    echo OS is 32
    set mem=%memthirtytwo%
) else (
    echo OS is 64
    set mem=%memsixtyfour%
)

echo Launching forge-1.12.2-14.23.5.2854.jar with arguments '%*' and '%mem%' max memory

:: add nogui to the end of this line to disable the gui ::
java -Xmx%mem% -XX:MaxPermSize=256M -jar forge-1.12.2-14.23.5.2854.jar %*
PAUSE
