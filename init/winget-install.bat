@echo off

winget install -s winget -e --id Microsoft.dotnetRuntime.6-x64
winget install -s winget -e --id gerardog.gsudo
winget install -s winget -e --id Lexikos.AutoHotkey
winget install -s winget -e --id JGraph.Draw
winget install -s winget -e --id Git.Git
winget install -s winget -e --id 7zip.7zip
winget install -s winget -e --id Microsoft.PowerToys
winget install -s winget -e --id OlegDanilov.RapidEnvironmentEditor
winget install -s winget -e --id FastCopy.FastCopy --location="%LOCALAPPDATA%\FastCopy"
winget install -s winget -e --id Nikkho.FileOptimizer
winget install -s winget -e --id Mozilla.Firefox
winget install -s winget -e --id GitHub.cli
winget install -s winget -e --id Graphviz.Graphviz
winget install -s winget -e --id Greenshot.Greenshot
rem winget install -s winget -e --id Flameshot.Flameshot
winget install -s winget -e --id ImageMagick.ImageMagick
winget install -s winget -e --id Heroku.HerokuCLI
winget install -s winget -e --id GoLang.Go
winget install -s winget -e --id Typora.Typora
winget install -s winget -e --id Postman.Postman
winget install -s winget -e --id KeePassXCTeam.KeePassXC
winget install -s winget -e --id Microsoft.OpenJDK.11
winget install -s winget -e --id Microsoft.VisualStudioCode
winget install -s winget -e --id JetBrains.IntelliJIDEA.Community
winget install -s winget -e --id ImageMagick.ImageMagick
winget install -s winget -e --id calibre.calibre
winget install -s winget -e --id qishibo.AnotherRedisDesktopManager
winget install -s winget -e --id Microsoft.XMLNotepad
winget install -s winget -e --id TeraTermProject.teraterm
winget install -s winget -e --id WinMerge.WinMerge
winget install -s winget -e --id NickeManarin.ScreenToGif
winget install -s winget -e --id Adobe.Acrobat.Reader.64-bit
winget install -s winget -e --id Qalculate.Qalculate
winget install -s winget -e --id MarkText.MarkText
winget install -s winget -e --id LibreOffice.LibreOffice
winget install -s winget -e --id AntoniKepinski.ParsifyDesktop

winget install -s winget -e --id ArtifexSoftware.GhostScript --version 9.52

winget install -s msstore "Sysinternals Suite"
winget install -s msstore DevToys
winget install -s msstore MPC-BE

refreshenv
