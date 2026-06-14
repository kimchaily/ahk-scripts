#NoTrayIcon
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


; PrintScreen-Key: context menu
;PrintScreen::Send {Shift Down}+{F10}+{Shift Up}

;
#PgUp::Send {Media_Prev}
#PgDn::Send {Media_Next}
#Pause::Send {Media_Play_Pause}
#NumpadAdd::Send {Volume_Up}
#NumpadSub::Send {Volume_Down}


; +<::Send >
; <::Send <
; <^>!<::Send \
; < & Tab::AltTab
; < & Space::Send {Alt down}+{Space}+{Alt up}
; < & F4::Send {Alt down}+{F4}+{Alt up}
;^w::Send {Ctrl Down}{F4}{Ctrl Up}
;^w::Send {LControl down}+{F4}+{LControl up}