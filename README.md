# DriveSanitizer Developed by: Carlos Martinez
This tool it uses SDelete of Microsoft Sysinternals written by Mark Russinovich
This project uses SDelete to erase multiple computer storage Drives at the same time, it is designed to integrate in a Windows WinPE image

To integrate this project to a Windows WinPE image you most complete following instruction:

1- Download and install Windows ADK and Windows PE add-on link: (https://docs.microsoft.com/en-us/windows-hardware/get-started/adk-install)

2- Create WinPE working files directory (https://docs.microsoft.com/en-us/windows-hardware/manufacture/desktop/winpe-create-usb-bootable-drive#step-1-create-working-files)

3- Mount the Windows PE boot image (https://docs.microsoft.com/en-us/windows-hardware/manufacture/desktop/winpe-mount-and-customize)

4- Unzip the latest release DriveSanitizer ( https://github.com/cmartinezone/DriveSanitizer/releases ) 

5- Copy all DriveSanitizer files and folder into the ( WinPE offline directory \mount\windows\system32)

6- Unmount WinPE and generate an ISO file, also you can use the boot.wim image from  ( WinPE  ofline directory\media\sources\boot.wim ) and integrate into a WDS PXE Server  (https://docs.microsoft.com/en-us/windows-hardware/manufacture/desktop/winpe-mount-and-customize#unmount-the-windows-pe-image-and-create-media)

one script will develop to automate the steps above :)
