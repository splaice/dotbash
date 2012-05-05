# ~/.bashrc

# enable colors on osx
if [[ "$UNAME" == "Darwin" ]] ; then
	export CLICOLOR=1
fi

# editor defaults
export VISUAL=vi
export EDITOR=vi
export PAGER=less

# don't put duplicate lines in the history. See bash(1) for more options
export HISTCONTROL=ignoredups
# ... and ignore same sucessive entries.
export HISTCONTROL=ignoreboth

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# path config
if [ -f ~/.bash/path ]; then
    source  ~/.bash/path
fi

# prompt/ps1 config
if [ -f ~/.bash/prompt ]; then
    source  ~/.bash/prompt
fi

# Alias definitions.
if [ -f ~/.bash/aliases ]; then
    source  ~/.bash/aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
    # bash completion settings (actually, these are readline settings)
    bind "set completion-ignore-case on" # note: bind is used instead of setting these in .inputrc.
                                         # This ignores case in bash completion
    bind "set bell-style none"           # No bell, because it's damn annoying
    bind "set show-all-if-ambiguous On"  # this allows you to automatically show completion without
fi

# local definitions.
if [ -f ~/.bashrc_local ]; then
    source  ~/.bashrc_local
fi