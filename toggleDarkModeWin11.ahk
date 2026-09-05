; ============================================
; Windows 11 Dark Mode Toggler (AHK v1.0/v1.1)
; Hotkey: Ctrl + Alt + D
; ============================================

#Persistent
#SingleInstance Force

^!d::
regPath := "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize"

RegRead, currentValue, %regPath%, AppsUseLightTheme
if (currentValue = "")
    currentValue := 1

newValue := (currentValue = 1) ? 0 : 1

RegWrite, REG_DWORD, %regPath%, AppsUseLightTheme, %newValue%
RegWrite, REG_DWORD, %regPath%, SystemUsesLightTheme, %newValue%

Process, Close, explorer.exe
Sleep, 500
Run, explorer.exe

if (newValue = 1)
    modeText := "Light Mode aktiviert"
else
    modeText := "Dark Mode aktiviert"

TrayTip, Theme gewechselt, %modeText%, 3
return