#!/bin/sh

WIN_HOME=$(cygpath $USERPROFILE)

cd $(dirname $0)
for dotfile in .?*
do
  if [ $dotfile != '..' ] && [ $dotfile != '.git' ]
  then
    cp "$PWD/$dotfile" $WIN_HOME
    if [ $? == 0 ]; then
      echo created "$WIN_HOME/$dotfile"
    fi
  fi
done
