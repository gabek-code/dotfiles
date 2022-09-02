#       _ _                           _
#  __ _| (_) __ _ ___  ___  ___   ___| |__
#  / _` | | |/ _` / __|/ _ \/ __| / __| '_ \
# | (_| | | | (_| \__ \  __/\__ \_\__ \ | | |
#  \__,_|_|_|\__,_|___/\___||___(_)___/_| |_|
#

# Check to see if we have lsd installed
[[ $(lsd --version 2> /dev/null) ]] && \
    alias ls='lsd -F -h --group-directories-first' || \
    alias ls='ls --color=auto'

# ls aliases
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

# directory pushes 
if [ -f $HOME/gksrc ]; then 
    alias popengl='pushd $GKSRC/playground/opengl'
    alias pglren='pushd $GKSRC/playground/gl-renderer'
    alias pcdump='pushd /var/lib/systemd/coredump'
    alias ppw='pushd $GKSRC/web/personal-website/'
fi

# pacman/yay aliases
if [ -f /etc/arch-release ]; then 
    alias search='sudo pacman -Ss'
    alias update='sudo pacman -Syu'
    alias ysearch='yay -Ss'
    alias yupdate='yay -Syu'
fi

# RU directory pushes
if [ -f $HOME/gksrc/rockefeller ]; then
    alias pinclude='pushd $HOME/RU-repo/include'
    alias psrc='pushd $HOME/RU-repo/src'
    alias pmfdump='pushd $HOME/RU-repo/src/mfdump'
    alias pplot='pushd $HOME/RU-repo/src/plot'
    alias pmfdraw='pushd $HOME/RU-repo/src/mfdraw-gmk'
    alias plotdoc='mupdf $HOME/RU-repo/src/plot/plotting.pdf &'
fi

# reload Xresources (usually for themes)
[[ -f $HOME/.Xresources ]] && \
    alias ureload='xrdb -merge $HOME/.Xresources'

# trash aliases
alias rm='rm -i'
alias delete='mv -t ~/.trash'

# ??
alias ccat='pygmentize -g'

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
