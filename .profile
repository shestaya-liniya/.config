# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
        . "$HOME/.bashrc"
    fi
fi

# user@system:~/user/working/directory
# $
PS1="\e[0;32m\u@\h\e[m:\w\n$ "

# default
# PS1="\h:\W \u\$"

# ~/user/working/directory $
# PS1="\w \e[0;32m\$ \e[m\n"

export BASH_SILENCE_DEPRECATION_WARNING=1
