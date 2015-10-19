:: These are to clear off traces of commands.
@echo off
cls

:: The script will ask the user 2 times if they want to continue running, as well as tell the user about important information.
echo This works best with a fresh install.
echo Have you right clicked the file and clicked "Run As Administrator?" Have you run this script as administrator another way?
echo If not, exit this script. Otherwise, press enter.
pause
echo Chocolatey, a package(program) manager, will be installed.
echo Is this okay with you?
echo If not, exit this script. Otherwise, press enter.
pause

:: Chocolatey will be installed to work as a package manager
@powershell -NoProfile -ExecutionPolicy Bypass -Command "iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))" && SET PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin

:: We will now install necessary packages.
choco install chocolateygui -y
choco install sudo -y
choco install wget -y
choco install win-xkill -y
choco install notepadplusplus.install -y
choco install nano -y
choco install vim -y
choco install 7zip.install -y
choco install vlc -y
choco install 7zip.commandline -y
choco install libreoffice -y
choco install python -y
choco install putty -y
choco install cyg-get -y

:: We will now make new keyboard shortcuts.
