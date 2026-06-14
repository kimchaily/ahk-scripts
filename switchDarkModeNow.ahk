; This script toggles between light and dark mode in Windows 10
#NoTrayIcon

; Set the hotkey (you can change the hotkey to your preference)
; Here, we use Ctrl + Alt + D
ToggleDarkMode()
return

ToggleDarkMode() {
    ; Read the current theme setting
    RegRead, CurrentTheme, HKEY_CURRENT_USER, Software\Microsoft\Windows\CurrentVersion\Themes\Personalize, AppsUseLightTheme
    
    ; Toggle the theme setting
    if (CurrentTheme = 1) {
        RegWrite, REG_DWORD, HKEY_CURRENT_USER, Software\Microsoft\Windows\CurrentVersion\Themes\Personalize, AppsUseLightTheme, 0
        RegWrite, REG_DWORD, HKEY_CURRENT_USER, Software\Microsoft\Windows\CurrentVersion\Themes\Personalize, SystemUsesLightTheme, 0
    } else {
        RegWrite, REG_DWORD, HKEY_CURRENT_USER, Software\Microsoft\Windows\CurrentVersion\Themes\Personalize, AppsUseLightTheme, 1
        RegWrite, REG_DWORD, HKEY_CURRENT_USER, Software\Microsoft\Windows\CurrentVersion\Themes\Personalize, SystemUsesLightTheme, 1
    }

    ; Notify the system of the change
    DllCall("UxTheme.dll\SetSystemTheme", "Int", 0)
}
