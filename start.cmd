@echo off
Title SuperSurplus 2.0: Do not close this window until everything get completed! By: Carlos Martinez
reg import %WINDIR%\system32\sdelete.reg
cls
echo.
diskpart /s ListDisks.txt
echo.
cscript UserConfirm.vbs
If %ERRORLEVEL% NEQ 2 exit
cmd
