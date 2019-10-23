@echo off
rem Set power profile to High Peformance
powercfg -setactive 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c
rem Turn off hibernation
powercfg -hibernate OFF
rem Disable Standby
powercfg -x -standby-timeout-ac 0
rem Disable monitor time out
powercfg -change -monitor-timeout-ac 0
rem Do Nothing when lid is closed
powercfg -setacvalueindex 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c 4f971e89-eebd-4455-a8de-9e59040e7347 5ca83367-6e45-459f-a27b-476b1d01c936 0
rem Set minimum processor state to 100 percent on AC
powercfg -setacvalueindex 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c 54533251-82be-4824-96c1-47b60b740d00 893dee8e-2bef-41e0-89c6-b55d0929964c 100
rem prevent computer from going to sleep while multimedia is active
powercfg -setacvalueindex 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c 9596fb26-9850-41fd-ac3e-f7c3c00afd4b 03680956-93bc-4294-bba6-4e0f09bb717f 1
rem Bypass password on screen wakeup
powercfg -setacvalueindex 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c fea3413e-7e05-4911-9a71-700331f1c294 0e796bdb-100d-47d6-a2d5-f7d2daa51f51 0
rem Run WiFi Connection script
PowerShell.exe -NoProfile -Command "& {Start-Process PowerShell.exe -ArgumentList '-NoProfile -ExecutionPolicy Bypass -File ""%~dpn0.ps1""' -Verb RunAs}"
timeout /T 8
start chrome www.psav.com
rem Echo Done!  You may close window and go on to next laptop
rem pause

