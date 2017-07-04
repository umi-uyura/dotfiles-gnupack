##
## .bash_profile
##

#
# Shell configurations
#

for file in ~/dotfiles/shell/{aliases,bash_prompt,exports}; do
  [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;


#

#
# SDKMAN
#

export SDKMAN_DIR="$HOME/.sdkman"
SDKMAN_INIT="$HOME/.sdkman/bin/sdkman-init.sh"
[[ -s $SDKMAN_INIT ]] && source $SDKMAN_INIT


#
# Local settings
#

if [ -f ~/.bash_local ]; then
    . ~/.bash_local
fi
