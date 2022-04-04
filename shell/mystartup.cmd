@ECHO OFF
@REM Command prompt startup script

IF "%MYSTARTUP_INIT%"=="OK" (
   EXIT /b
)

SET MYSTARTUP_INIT=OK

doskey /macrofile=%HOME%\dotfiles\shell\doskey.txt

WHERE fnm >nul 2>nul
IF %ERRORLEVEL% EQU 0 (
   FOR /f "tokens=*" %%z IN ('fnm env --use-on-cd') DO CALL %%z
)
