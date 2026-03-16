#NoTrayIcon  ; Hide tray icon, comment line to show tray icon 

; If executable is built locally, use that instead
if FileExist(".\Build\bin\Release\AkhilInvisible.exe")
    SetWorkingDir Build\bin\Release

; CTRL + J → Hide active window
^j::
WinGet, pid, PID, A
Run AkhilInvisible.exe --hide %pid%,, Hide
return

; CTRL + K → Unhide active window
^k::
WinGet, pid, PID, A
Run AkhilInvisible.exe --unhide %pid%,, Hide
return

; CTRL + Q → Exit this script
^q::
ExitApp
return
