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
# Cygwin sudo
#
# https://stackoverflow.com/questions/4090301/root-user-sudo-equivalent-in-cygwin
#

if [[ -n "$PS1" ]]; then
  __sudo_cygwin() {
    local executable=$(which "${1:-cmd}")
    shift
    /usr/bin/cygstart --action=runas "$executable" "$@"
  }

  if [[ -x "/usr/bin/cygstart" ]]; then
    alias sudo=__sudo_cygwin
  fi
fi


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
# Local settings
#

if [ -f ~/.bash_local ]; then
    . ~/.bash_local
fi
