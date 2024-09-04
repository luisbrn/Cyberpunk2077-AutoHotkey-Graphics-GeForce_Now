; AutoHotkey v2 Script for Automating Cyberpunk 2077 Graphics Settings on GeForce Now

; Initialize the flag to track if the action is done
isActionDone := false

; Set a timer to check for the game window every second
SetTimer WatchGameWindow, 1000
return

WatchGameWindow() {
    global isActionDone
    if WinActive("ahk_exe GeForceNOW.exe") and WinActive("Cyberpunk 2077") and not isActionDone {
        isActionDone := true ; Mark the action as done
        OpenSettingsAndAdjustGraphics()
    }
}

OpenSettingsAndAdjustGraphics() {
    ; Press ESC to open the pause menu
    Send("{Esc}")
    Sleep(500) ; Wait for the menu to open
    Send("{Down 1}")
    Sleep(500)
    Send("{Enter}")
    Sleep(1000)

 
    ; Navigate to the Graphics menu
    Send("{3 3}")
    Sleep(800)
    Send("{Down 1}")
    Sleep(800)
    Send("{Enter}")
    Sleep(800)
    Send("{Enter}")
    Sleep(800)

    ; Navigate to Blur settings : Delete this if you want blur to High
        Send("{Down 1}")
    Sleep(500)
        Send("{Down 1}")
    Sleep(500)
        Send("{Down 1}")
    Sleep(500)
        Send("{Down 1}")
    Sleep(500)
        Send("{Down 1}")
    Sleep(500)
        Send("{Down 1}")
    Sleep(500)
        Send("{Down 1}")
    Sleep(500)
        Send("{Down 1}")
    Sleep(800)
    Send("{A 2}")
    Sleep(800)
    Send("{Right 1}")
    Sleep(800)
    Send("{Enter}")

    
}