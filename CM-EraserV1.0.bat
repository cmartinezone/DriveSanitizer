@echo off
::By Carlos Martinez 9/4/2017
::Variable has been set with disk number
:: if  Disk number exist launch wipe.cmd script with parameters set
title Checking hard drive in progress...
SET /A "Dn=0"
%WINDIR%\system32\diskpart /s CheckD.txt &&  start Wipe.cmd"
SET /A "Dn=1"
%WINDIR%\system32\diskpart /s CheckD.txt &&  start Wipe.cmd"
SET /A "Dn=2"
%WINDIR%\system32\diskpart /s CheckD.txt &&  start Wipe.cmd"
SET /A "Dn=3"
%WINDIR%\system32\diskpart /s CheckD.txt &&  start Wipe.cmd"
SET /A "Dn=4"
%WINDIR%\system32\diskpart /s CheckD.txt &&  start Wipe.cmd"
SET /A "Dn=5"
%WINDIR%\system32\diskpart /s CheckD.txt &&  start Wipe.cmd"
SET /A "Dn=6"
%WINDIR%\system32\diskpart /s CheckD.txt &&  start Wipe.cmd"
SET /A "Dn=7"
%WINDIR%\system32\diskpart /s CheckD.txt &&  start Wipe.cmd"
SET /A "Dn=8"
%WINDIR%\system32\diskpart /s CheckD.txt &&  start Wipe.cmd"
SET /A "Dn=9"
%WINDIR%\system32\diskpart /s CheckD.txt &&  start Wipe.cmd"
SET /A "Dn=10"
%WINDIR%\system32\diskpart /s CheckD.txt &&  start Wipe.cmd"
Title !!Warning!! Do not close this Window until everything get completed. 
exit 