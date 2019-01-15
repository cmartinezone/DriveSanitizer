@ECHO OFF
::Created Version 1.0 by Carlos Martinez 9/4/2017
::Wipe Drive v2.0 12/31/2018
::The variable Dn: value has been passed from Drive-Initializer.bat

Title Disk %Dn% Erasing... 
::start first function
goto StartWipe

::Function to start wipping the drive 
:StartWipe
diskpart /s "Diskpart\Drive-Wipe.txt"
cls

::Call SDelete to wipe the drive in 3 passes, free space, zero space
SDelete\sdelete64.exe -p 3 -c -z %Dn% 
title Disk %Dn% Completed!
echo Drive has been successfully wiped.
goto Edn

::It Keeps the console open
:Edn

