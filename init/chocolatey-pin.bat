@echo off

choco pin add -n=androidstudio
choco pin add -n=GoogleChrome
choco pin add -n=heroku-cli
choco pin add -n=intellijidea-community
choco pin add -n=vscode

choco pin list
