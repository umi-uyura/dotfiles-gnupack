@ECHO OFF

REM Show seconds on task tray clock
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v ShowSecondsInSystemClock /t REG_DWORD /d 1 /f

ECHO.
ECHO **IMPORTANT** Please reboot the system.
