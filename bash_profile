# Determine if we are connected to a remote host via ssh
if [ -z "$SSH_CONNECTION" ] ; then
    REMOTE=0
else
    REMOTE=1
fi

UNAME=$(uname)

# load .bashrc
if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi

# Initialize the 'hop' script
if [ -f '/Users/splaice/.virtualenvs/default/hop/hop.bash' ] ; then
    source /Users/splaice/.virtualenvs/default/hop/hop.bash
fi
