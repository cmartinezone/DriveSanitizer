@ECHO OFF
::Created by Carlos Martinez on 9/4/18
:: Version 2.0 12/31/2018 addiding  VBScript dialog

Title DriveSanitizer 2.0: Do not close this window until everything is completed!

::Import Registry file Entries to omit SDelete dialog  
reg import "SDelete\sdelete.reg"
echo.

::List of Drives connect to the system
Echo ========================== DRIVE SANITIZER V 2.0 =============================
echo.
diskpart /s DiskPart\Drive-List.txt
echo.
echo Please confirm if you want to wipe the drives connect on this system?

::VBScript dialog to confirm if the user want procede with the action 
::Errorlevel global variable value will be different than 2 if the user does not to proceed with this action
::Window will close if the user does not confirm to proceed 
cscript UserConfirm.vbs
If %ERRORLEVEL% NEQ 2 ( exit ) else ( echo Wiping drives initialized )

:: Command line console to prevent window close if the user continue with action
CMD