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
choco install chocolateygui
choco install sudo
choco install wget
choco install win-xkill
choco install notepadplusplus.install
choco install nano
choco install vim
choco install 7zip.install
choco install vlc
choco install 7zip.commandline
choco install libreoffice
choco install python
choco install putty
choco install cyg-get
