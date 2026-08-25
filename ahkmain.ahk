#include ahk/winmove.ahk

;
; AutoHotkey Version: 1.x
; Language:       English
; Platform:       Win9x/NT
; Author:         A.N.Other <myemail@nowhere.com>
;
; Script Function:
;	Template script (you can customize this template by editing "ShellNew\Template.ahk" in your Windows folder)
;
#NoTrayIcon


#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; Reload this Script
#F5::Reload

; Run Copied Text
; #v::
; Run, %Clipboard%
; return

; Run Selected Text
; #+v::
; clipboard =  ; Start off empty to allow ClipWait to detect when the text has arrived.
; Send ^c
; ClipWait  ; Wait for the clipboard to contain text.
; Run, %Clipboard%
; return

;#v::Run vivaldi
;#c::Run chrome

#h::WinMinimize, A

; Media Keys
#PgUp::Send {Media_Prev}
#PgDn::Send {Media_Next}
#Pause::Send {Media_Play_Pause}
#NumpadAdd::Send {Volume_Up}
#NumpadSub::Send {Volume_Down}