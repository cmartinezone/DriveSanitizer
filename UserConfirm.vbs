'Carlos Martinez - Vscript to initialize the wiping process  v1.0 - 12/31/2018

Function Start()
Dim MyVar
MyVar = MsgBox ("Continuaing will erase all data on the drives connected to this system. Are you sure you want to coninue?", vbExclamation + vbYesNo, "SuperSurplus 2.0: Warning!!!")
   ' MyVar contains either 6 or 7, depending on which button is clicked.
   If MyVar = 6 Then
   call1()   
   WScript.Quit 2
   Else 
   close()
End If   
End Function 

Function close()
Dim MyVar
MyVar = MsgBox ("Process is not complete. if you want to quit this process, action will not execute click 'Cancel'" & vbCrLf & vbCrLf & "To Continue with this process, click 'Retry'" ,  vbQuestion + vbRetryCancel, "SuperSurplus 2.0: Resume")
   ' MyVar contains either 4 or 2, depending on which button is clicked.
   If MyVar = 4 Then
   Start()
   Else 
   WScript.Quit 0
End If   
End Function   

'initialize function
Start()
   
Function Call1()
dim shell
set shell=createobject("wscript.shell")
shell.run "CM-EraserV1.0.bat"
set shell=nothing
End Function


'Function Call2()
'Dim objShell, strProgram
'Set objShell = CreateObject("Wscript.Shell")
'strProgram = "%comspec% /k ipconfig /all"
'objShell.Run strProgram,1,True
'End Function

