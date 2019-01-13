# DriveSanitizer2.0 Developed by: Carlos Martinez
This tool it uses SDelete of Microsoft Sysinternals written by Mark Russinovich
Project for Wiping Multiple Drives at the same time, integration in Windows WinPE using SDelete

To integrate this project to Windows WinPE image you most complete following instruction:

1- Download and install the Windows ADK link: (https://docs.microsoft.com/en-us/windows-hardware/get-started/adk-install)

2- Install Windows ADK and Windows PE add-on

3- Create WinPE link: (https://docs.microsoft.com/en-us/windows-hardware/manufacture/desktop/winpe-create-usb-bootable-drive)

4- Mount WinPE Directory

5- Navegate to ofline directory \mount\windows\system32

5- Copy everything from DriveSanizer2.0 repository and past all in the path location above

6- Unmount WinPE and generate iso also you can use the boot.wim image on the WinPE local respository for PXE Server
