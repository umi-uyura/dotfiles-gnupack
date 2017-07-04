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
# ssh-agent
#

SSHAGENT=/usr/bin/ssh-agent
SSHAGENTARGS="-s"

if [ -n "$SSH_AUTH_SOCK" -a -x "$SSHAGENT" ]; then
  if test -f ~/.ssh-agent-env; then
    eval `cat ~/.ssh-agent-env`
  else
    eval `$SSHAGENT $SSHAGENTARGS`
    trap "kill $SSH_AGENT_PID" 0
  fi
fi


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
