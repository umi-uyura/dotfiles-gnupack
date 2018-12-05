;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; AutoHotKey configuration
;;
;; Installation:
;; 1. Install AutoHotKey (Use chocolatey)
;; 2. Create shortcut this file
;; 3. Copy shortcut to user's startup folder
;;    C:\Users\<Username>\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup
;; 4. Reboot pc
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Virtual Desktop
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; [Ctrl + Right Arrow] Move next desktop
^Right::send {LWin down}{LCtrl down}{Right}{LWin up}{LCtrl up}

;; [Ctrl + Left Arrow] Move prev desktop
^Left::send {LWin down}{LCtrl down}{Left}{LWin up}{LCtrl up}
