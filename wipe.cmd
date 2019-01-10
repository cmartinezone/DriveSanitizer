@echo off
::Wipe Drive v2.0 12/31/2018
Title Disk #%Dn% Erasing... 
goto StartWipe

:StartWipe
%WINDIR%\system32\diskpart /s WipeD.txt
cls
sdelete64 -p 3 -c -z %Dn%
echo.
Echo Applying Ghost MSDOS boot image...
set /A Dn+=1
ghost64.exe -batch -clone,mode=restore,src=dos.gho,dst=%Dn% -sure -quiet -blind -pmbr
If %ERRORLEVEL% NEQ 0 goto Error
set /A Dn-=1
title Disk #%Dn% Completed!
echo Drive has been successfully sanitized.
goto Edn


:Error
set /A Dn-=1
title Disk #%Dn% Error!
echo Something went wrong, please try again!
goto Edn


:Edn

