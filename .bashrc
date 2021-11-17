PATH=$HOME/bin:$HOME/.local/bin:$HOME/.local/bin/dmenuscripts:$HOME/.cargo/bin:/bin:/sbin:/usr/bin:/usr/sbin:/usr/X11R6/bin:/usr/local/bin:/usr/local/sbin:/usr/games
export PATH HOME TERM

# If not running interactively, don't do anything 
[[ $- != *i* ]] && return 

stty -ixon # Disables ctrl-s and ctrl-q (Used To Pause Term) 

# Aliases
alias ..='cd ..' 
alias ...='cd ../..' 
alias ls='lsd'
alias df='df -h'
alias zaneyonline='ssh zaney@143.244.183.50'

# Add Color
alias egrep='grep --color=auto' 

# PS1 Customization
pokemon-colorscripts -n squirtle | sed '1,2d'
PS1="\[\e[32m\]\h\[\e[m\]\[\e[36m\]@\[\e[m\]\[\e[34m\]\u\[\e[m\] \W \$ " 

export SCRIPTDIR=$HOME/.local/share/scriptdeps
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export TERMINAL=/usr/local/bin/st
export BROWSER=/usr/local/bin/chrome
export EDITOR=/usr/local/bin/vim

