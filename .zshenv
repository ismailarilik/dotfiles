# Define XDG Base Directories
XDG_CONFIG_HOME=$HOME/.config
XDG_CACHE_HOME=$HOME/.cache
XDG_DATA_HOME=$HOME/.local/share
XDG_STATE_HOME=$HOME/.local/state

# Default editor
export EDITOR="emacsclient -c"

# To colorize output of `less`
export LESS='-R --use-color -Dd+r$Du+b$'
# To highlight source in `less` output
export LESSOPEN="| /usr/bin/source-highlight-esc.sh %s"

# Set `less` for the man pager and colorize its output
export MANPAGER="less -R --use-color -Dd+r -Du+b"
export MANROFFOPT="-P -c"

# To be able to start ssh-agent with systemd user.
# Set it when the current session is not an SSH login.
# Otherwise it is set by the local machine on the remote machine
# to make the forwarding work.
if [[ -z "${SSH_CONNECTION}" ]]; then
    export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"
fi

# Variables for the Git prompt
export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWSTASHSTATE=true
export GIT_PS1_SHOWUNTRACKEDFILES=true
export GIT_PS1_SHOWUPSTREAM=true
export GIT_PS1_STATESEPARATOR=""
export GIT_PS1_DESCRIBE_STYLE=true
export GIT_PS1_SHOWCOLORHINTS=true
