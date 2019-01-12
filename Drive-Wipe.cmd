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

::Change the Dn varialble value for ghost64 which it works with +1 drive index 
set /A Dn+=1

::Call ghost to apply the MSDOS image to the drive cleaned 
MSDOSGhost\ghost64.exe -batch -clone,mode=restore,src=MSDOSGhost\dos.gho,dst=%Dn% -sure -quiet -blind -pmbr

If %ERRORLEVEL% NEQ 0 goto Error

::Restore variable initial value 
set /A Dn-=1
title Disk %Dn% Completed!
echo Drive has been successfully wiped.
goto Edn

::Error function if Ghost output error level change
:Error
set /A Dn-=1
title Disk %Dn% Error!
echo Something went wrong, please try again!
goto Edn

::It Keeps the console open
:Edn

