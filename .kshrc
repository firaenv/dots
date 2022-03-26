BROWSER=/usr/local/bin/chromium
EDITOR=/usr/local/bin/vim
export EDITOR=vim
export LANG=en_US.UTF-8

# Aliases
alias ..='cd ..' 
alias ...='cd ../..' 
alias ls='lsd'
alias df='df -h'

# Add Color
alias egrep='grep --color=auto' 

pokemon-colorscripts -n togepi | sed '1,2d'
PCNAME="bruh"
PS1='\033[32m${USER}\033[35m@\033[34m${PCNAME} \033[33m${PWD} \033[36m\n\$\033[0m'
export PS1
