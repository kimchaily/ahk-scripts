;
; AutoHotkey Version: 1.x
; Language:       English
; Platform:       Win9x/NT
; Author:         A.N.Other <myemail@nowhere.com>
;
;
#NoTrayIcon

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#F2::DllCall("SystemParametersInfo", Int,113, Int,0, UInt,8, Int,2)
#F3::DllCall("SystemParametersInfo", Int,113, Int,0, UInt,18, Int,2)