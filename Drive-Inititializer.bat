@ECHO OFF
::Created Version 1.0 by Carlos Martinez 9/4/2017
::Version 2.0 12/31/2018
::The Global Variables:   Dn: Drive number
::If the  Drive number exist on the system it launches Drive-Wipe.cmd script with drive number

Title Checking Drives in progress...

SET /A "Dn=0"
diskpart /s Diskpart/Drive-Check.txt &&  start Drive-Wipe.cmd"

SET /A "Dn=1"
diskpart /s Diskpart/Drive-Check.txt &&  start Drive-Wipe.cmd"

SET /A "Dn=2"
diskpart /s Diskpart/Drive-Check.txt &&  start Drive-Wipe.cmd"

SET /A "Dn=3"
diskpart /s Diskpart/Drive-Check.txt &&  start Drive-Wipe.cmd"

SET /A "Dn=4"
diskpart /s Diskpart/Drive-Check.txt &&  start Drive-Wipe.cmd"

SET /A "Dn=5"
diskpart /s Diskpart/Drive-Check.txt &&  start Drive-Wipe.cmd"

SET /A "Dn=6"
diskpart /s Diskpart/Drive-Check.txt &&  start Drive-Wipe.cmd"

SET /A "Dn=7"
diskpart /s Diskpart/Drive-Check.txt &&  start Drive-Wipe.cmd"

SET /A "Dn=8"
diskpart /s Diskpart/Drive-Check.txt &&  start Drive-Wipe.cmd"

SET /A "Dn=9"
diskpart /s Diskpart/Drive-Check.txt &&  start Drive-Wipe.cmd"

SET /A "Dn=10"
diskpart /s Diskpart/Drive-Check.txt &&  start Drive-Wipe.cmd"

Title !!Warning!! Do not close this Window until everything get completed. 
exit 