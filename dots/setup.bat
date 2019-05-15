@echo off
setlocal

set BATDIR=%~dp0
cd %BATDIR%

for %%a in (.*) do (
  echo %%a
  mklink %USERPROFILE%\%%a %BATDIR%\%%a
)