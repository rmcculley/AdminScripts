@echo off
rem List all WiFi Profiles
rem
netsh wlan show profiles
rem
echo "Here is a list of WiFi Proliles on this computer."
rem
rem
set /p SSIDInfo= "Enter the exact name of the profile that you want to export:  "
setx UserInfo "%SSIDInfo%"
rem
rem
Netsh WLAN export profile name="%SSIDInfo%" key=clear folder="%USERPROFILE%\Desktop"

