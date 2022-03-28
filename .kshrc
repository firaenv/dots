BROWSER=/usr/local/bin/chromium
EDITOR=/usr/local/bin/vim
export EDITOR=vim
export LANG=en_US.UTF-8

# Aliases
alias ..='cd ..' 
alias ...='cd ../..' 
alias ls='lsd'
alias df='df -h'
set -o emacs
alias __A=`echo "\020"`     # up arrow = ^p = back a command
alias __B=`echo "\016"`     # down arrow = ^n = down a command
alias __C=`echo "\006"`     # right arrow = ^f = forward a character
alias __D=`echo "\002"`     # left arrow = ^b = back a character
alias __H=`echo "\001"`     # home = ^a = start of line
alias __Y=`echo "\005"`     # end = ^e = end of line

# Add Color
alias egrep='grep --color=auto' 

pokemon-colorscripts -n togepi | sed '1,2d'
PCNAME="bruh"
PS1='\033[32m${USER}\033[35m@\033[34m${PCNAME} \033[33m${PWD} \n\033[36m\$ \033[0m'
export PS1
