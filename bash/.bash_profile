# ____            _                           __ _ _
# | __ )  __ _ ___| |__       _ __  _ __ ___  / _(_) | ___
# |  _ \ / _` / __| '_ \     | '_ \| '__/ _ \| |_| | |/ _ \
# | |_) | (_| \__ \ | | |    | |_) | | | (_) |  _| | |  __/
# |____/ \__,_|___/_| |_|____| .__/|_|  \___/|_| |_|_|\___|
#                               |_____|_|

export LC_ALL="en_US.UTF-8"
export EDITOR="nvim"

export SCRIPTS=$HOME/.scripts
export PATH=$HOME/bin:$SCRIPTS:$SCRIPTS/util:$SCRIPTS/pacman:$PATH

export BROWSER=/usr/bin/firefox

set bell-style none

# Source the bashrc
[[ -f $HOME/.bashrc ]] && . ~/.bashrc

# determine environment
[[ $(grep microsoft /proc/version) ]] && export GK_WSL=1
if [ -f /mnt/open/fbsource ]; then
    export CDIR="/mnt/c"
    export FBSRC="$CDIR/open/fbsource"
fi
