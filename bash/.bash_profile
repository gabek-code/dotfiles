#
# ~/.bash_profile
#

export LC_ALL="en_US.UTF-8"
export EDITOR="nvim"

SCRIPTS=$HOME/.scripts
PATH=$SCRIPTS:$SCRIPTS/util:$SCRIPTS/pacman:$PATH

# Source the bashrc
[[ -f $HOME/.bashrc ]] && . ~/.bashrc
