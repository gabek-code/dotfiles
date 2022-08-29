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

# Color for manpages in less makes manpages a little easier to read
export LESS_TERMCAP_mb=$'\E[01;32m'
export LESS_TERMCAP_md=$'\E[01;32m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;4;31m'

# Blinking box-cursor
echo -e "\033[1 q"

# MOVE TO BASH_PROFILE ?????
PATH=$HOME/bin:$PATH

# Bash prompt(s)
eval "$(oh-my-posh init bash --config ~/.poshthemes/nordtron.omp.json)"
# NOTE: We like: tiwahu, unicorn, 
#PS1='[\u@\h \W]\$ '
#PS1='\e[0;34m[\u@\h \W]\$ \e[0m'

set bell-style none

# ls aliases
#alias ls='ls --color=auto'
alias ls='lsd -F -h --group-directories-first'
alias ls1='ls -1'
alias l='ls'
alias ll='ls -l'
alias la='ls -A'
alias lss='ls -laSh'

# dir/cd
alias cd='cd'
alias ..='cd ..'
alias ...='cd ...'
alias ....='cd ....'

# tmux
alias tls='tmux list-sessions'

# aliases for archives
alias mktar='tar -cvf'
alias mkbz2='tar -cvjf'
alias mkgz='tar -cvzf'
alias untar='tar -xvf'
alias unbz2='tar -xvjf'
alias ungz='tar -xvzf'

# space available
alias spaceroot='df | grep "/dev/nvme0n1p11"'
alias spacehome='df | grep "/dev/nvme0n1p12"'

# rebindings
alias top='bpytop'

# weird rebindings here..
alias vi='vim'
alias vim='nvim'
alias e='$EDITOR'

# useful shortcuts
alias c='clear'
alias x='exit'

# config aliases
alias rsource='source $HOME/.bashrc'
alias ebc='$EDITOR $HOME/.bashrc'
alias evc='$EDITOR $HOME/.vimrc'
alias envc='$EDITOR $HOME/.config/nvim/init.vim'
alias ei3c='$EDITOR $HOME/.config/i3/config'
alias eac='$EDITOR $HOME/.config/alacritty/alacritty.yml'

alias gdb='cgdb'
alias diff='colordiff'
alias hex='ghex'

export GKSRC=$HOME/gksrc

# directory pushes 
alias popengl='pushd $GKSRC/playground/opengl'
alias pglren='pushd $GKSRC/playground/gl-renderer'
alias pcdump='pushd /var/lib/systemd/coredump'
alias ppw='pushd $GKSRC/web/personal-website/'

# RU directory pushes
alias pinclude='pushd $HOME/RU-repo/include'
alias psrc='pushd $HOME/RU-repo/src'
alias pmfdump='pushd $HOME/RU-repo/src/mfdump'
alias pplot='pushd $HOME/RU-repo/src/plot'
alias pmfdraw='pushd $HOME/RU-repo/src/mfdraw-gmk'
alias plotdoc='mupdf $HOME/RU-repo/src/plot/plotting.pdf &'

# pacman/yay aliases
alias search='sudo pacman -Ss'
alias update='sudo pacman -Syu'
alias ysearch='yay -Ss'
alias yupdate='yay -Syu'

# trash aliases
alias rm='rm -i'
alias delete='mv -t ~/.trash'

# ??
alias ccat='pygmentize -g'

# reload Xresources (usually for themes)
alias ureload='xrdb -merge ~/.Xresources'

# GPU/Prime aliases
alias gpu='prime-run'

# Network aliases
alias nm='nmtui'
alias speed='speedtest-cli --server 11612 --simple'
alias ipe='curl ipinfo.io/ip'
alias ipl='ipconfig getifaddr en0'

# Aliases for PW
alias lint='npm run lint'
alias lint:fix='npm run lint:fix'
alias pretty='npm run format'

# Fun aliases
alias cowfortune='fortune | cowsay'
alias starwars='telnet towel.blinkenlights.nl'
alias welcome='toilet -f mono12 -F metal "Go fuck yourself."'

# Valgrind testing:
alias valgdb='valgrind --vgdb=yes --vgdb-error=0'

# starting commands
#cowfortune
#neofetch --ascii "$(cowfortune -W 30)"

# Function aliases
cdfzf() { fzf | cd ;}

# Restore all git changes
gitrestoreall() { 
  git restore $(git status -s | awk '{print $2}' | tr '\n' ' ');
}

# Testing..
ableton() { 'MESA_GL_VERSION_OVERRIDE=4.5 wine ~/.wine/drive_c/ProgramData/Ableton/Live\ 11\ Trial/Program/Ableton\ Live\ 11\ Trial.exe' ; }
