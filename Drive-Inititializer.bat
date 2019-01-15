@ECHO OFF
::Created Version 1.0 by Carlos Martinez 9/4/2017
::Version 2.0 12/31/2018
::The Global Variables:   Dn: Drive number
::If the  Drive number exist on the system it launches Drive-Wipe.cmd script with drive number

Title Checking Drives in progress...

::Loop for checking drives availbles connect on the system and start wiping 

FOR /L %%A IN (0,1,10) DO (

SET /A "Dn=%%A"
diskpart /s Diskpart/Drive-Check.txt &&  start Drive-Wipe.cmd"

)

Title !!Warning!! Do not close this Window until everything is completed. 
exit 