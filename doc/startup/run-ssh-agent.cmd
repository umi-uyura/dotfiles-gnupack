@echo off
rem
rem Execute ssh-agent for Cygwin at Windows startup
rem
rem Place this script in the Windows startup folder.
rem Press Win + R and run "shell:startup" to open the startup folder.
rem

rem Start ssh-agent in the background. It will not be closed
start /b ssh-agent > %GNUPACK_HOME%\.ssh-agent-env
echo We need to ask you the password with which the SSH key is encoded
echo After that we will update the environment variable so that you
echo do not need to enter it again
pause
bash -c "export PATH="$GNUPACK_ROOT"/app/cygwin/cygwin/bin:$PATH; . ~/.ssh-agent-env; setx SSH_AUTH_SOCK "$SSH_AUTH_SOCK"; setx SSH_AGENT_PID "$SSH_AGENT_PID"; ssh-add"
