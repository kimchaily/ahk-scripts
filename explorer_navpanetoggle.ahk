; #NoTrayIcon
#Persistent
#NoEnv
#SingleInstance, Force

#IfWinActive ahk_class CabinetWClass
#n::
Send !d{tab}{tab}{enter}ln+{tab}+{tab}+{tab}+{tab}
return

; #IfWinActive ahk_class CabinetWClass
; #s::
; Send ^e{tab}{enter}ln
; return