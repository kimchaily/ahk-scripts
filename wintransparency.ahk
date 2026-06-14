;
; AutoHotkey Version: 1.x
; Language:       English
; Platform:       Win9x/NT
; Author:         A.N.Other <myemail@nowhere.com>
;
; Script Function:
;	Template script (you can customize this template by editing "ShellNew\Template.ahk" in your Windows folder)
;

;#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
;SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
;SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

    #T::
    ;DetectHiddenWindows, on
    WinGet, curtrans, Transparent, A
    if ! curtrans
        curtrans = 255
    newtrans := curtrans - 64
    if newtrans > 0
    {
        WinSet, Transparent, %newtrans%, A

    }
    else
    {
        WinSet, Transparent, 255, A
        WinSet, Transparent, OFF, A
    }
    return

    ; #w::
    ; DetectHiddenWindows, on
    ; WinSet, TransColor, Black 128, A
    ; return

    ; #o::
    ; WinSet, Transparent, 255, A
    ; WinSet, Transparent, OFF, A
    ; return

    ; #g::  ; Press Win+G to show the current settings of the window under the mouse.
    ; MouseGetPos,,, MouseWin
    ; WinGet, Transparent, Transparent, ahk_id %MouseWin%
    ; WinGet, TransColor, TransColor, ahk_id %MouseWin%
    ; ToolTip Translucency:`t%Transparent%`nTransColor:`t%TransColor%
    ; return
