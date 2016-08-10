## This file is free software; you can redistribute it and/or
## modify it under the terms of the GNU General Public License as
## published by the Free Software Foundation; either version 2 of
## the License, or (at your option) any later version.

# Windows User Home
export WINUSER_HOME=$(cygpath $USERPROFILE)

# Chocolatey
export CHOCOLATEY_HOME=/c/ProgramData/chocolatey
export PATH=$CHOCOLATEY_HOME/bin:$PATH

# Emacs
export EMACS_HOME=~/.emacs.d
export PATH=$EMACS_HOME/bin:$PATH

# Emacs Cask
export PATH="/home/.cask/bin:$PATH"

# Java
export PATH=$JAVA_HOME/bin:$PATH

# Android
export ANDROID_HOME=$WINUSER_HOME/AppData/Local/Android/android-sdk
export PATH=$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools:$PATH
