export BROWSER=/usr/local/bin/chrome
export EDITOR=/usr/local/bin/vi
export XDG_DATA_DIRS=/usr/local/share
export RUST_SRC_PATH=$HOME/.cache/rust-src/library
export LANG=en_US.UTF-8
export TERM=xterm
export SCRIPTDIR=$HOME/.local/share/scriptdeps
export PATH=$HOME/bin:/root/.cargo/bin:$HOME/.local/bin:$HOME/.local/bin/dmenuscripts:$HOME/.cargo/bin:/bin:/sbin:/usr/bin:/usr/sbin:/usr/X11R6/bin:/usr/local/bin:/usr/local/sbin:/usr/games

# Aliases
alias ..='cd ..' 
alias ...='cd ../..' 
alias df='df -h'
alias ls='exa'
alias sensors='sysctl hw.sensors'
alias disks='sysctl hw.disknames'
set -o emacs
alias __A=`echo "\020"`     # up arrow = ^p = back a command
alias __B=`echo "\016"`     # down arrow = ^n = down a command
alias __C=`echo "\006"`     # right arrow = ^f = forward a character
alias __D=`echo "\002"`     # left arrow = ^b = back a character
alias __H=`echo "\001"`     # home = ^a = start of line
alias __Y=`echo "\005"`     # end = ^e = end of line

pokemon-colorscripts -n togepi | sed '1,2d'
HOSTN=$( hostname | cut -c 6- )
PS1='\033[32m${USER}\033[35m@\033[34m${HOSTN} \033[33m${PWD}\n \033[36m$ \033[0m'
export PS1
