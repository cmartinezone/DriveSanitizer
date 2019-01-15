'Created VBScript v1.0 by Carlos Martinez on 12/31/18  

' First function to interact with the user if the user want to continue with the action
Function Start()
Dim MyVar
MyVar = MsgBox ("Continuing will erase all data on the drives connected to this system. Are you sure you want to coninue?", vbExclamation + vbYesNo, "DriveSanitizer 2.0: Warning!!!")
   ' MyVar contains either 6 or 7, depending on which button is clicked.
   If MyVar = 6 Then
   RunWipe()   
   WScript.Quit 2
   Else 
   close()
End If   
End Function 

'Function if the user doesn't want to continue with the action
Function close()
Dim MyVar
MyVar = MsgBox ("Process is not complete. if you want to quit this process, action will not execute click 'Cancel'" & vbCrLf & vbCrLf & "To Continue with this process, click 'Retry'" ,  vbQuestion + vbRetryCancel, "DriveSanitizer 2.0: Resume")
   ' MyVar contains either 4 or 2, depending on which button is clicked.
   If MyVar = 4 Then
   Start()
   Else 
   WScript.Quit 0
End If   
End Function   

'call the first function
Start()

'function to start the process when the user has confirmed to continue with action   
Function RunWipe()
dim shell
set shell=createobject("wscript.shell")
shell.run "Drive-Inititializer.bat"
set shell=nothing
End Function



