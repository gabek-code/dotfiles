# ____               _      ____    ____ 
# | __ )   __ _  ___ | |__  |  _ \  / ___|
# |  _ \  / _` |/ __|| '_ \ | |_) || |    
# | |_) || (_| |\__ \| | | ||  _ < | |___ 
# |____/  \__,_||___/|_| |_||_| \_\ \____|
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# should be on the output of commands, not on the prompt
force_color_prompt=yes

# Blinking box-cursor
echo -e "\033[1 q"

# Bash prompt(s)
PoshConfig="$HOME/.poshthemes/nordtron.omp.json"

# Set the promt
PS1='\e[0;34m[\u@\h \W]\$ \e[0m'
[[ -f $PoshConfig ]] && \
    eval "$(oh-my-posh init bash --config $PoshConfig)"

[[ $GK_WSL -gt 0 ]] && source $HOME/.bash/wsl.sh
[[ $GK_FB -gt 0 ]] && source $HOME/.bash/fb.sh
[[ -f $HOME/.bash/aliases.sh ]] && source $HOME/.bash/aliases.sh
