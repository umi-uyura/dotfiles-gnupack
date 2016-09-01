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
# Local settings
#

if [ -f ~/.bash_local ]; then
    . ~/.bash_local
fi
