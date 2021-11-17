# If not running interactively, don't do anything 
[[ $- != *i* ]] && return 

stty -ixon # Disables ctrl-s and ctrl-q (Used To Pause Term) 

## ALIASES ## 

# navigation 
alias ..='cd ..' 
alias ...='cd ../..' 

alias ls='lsd' 

# Add Color
alias egrep='grep --color=auto' 

PS1="\[\e[32m\]\h\[\e[m\]\[\e[36m\]@\[\e[m\]\[\e[34m\]\u\[\e[m\] \W \$ " 

pokemon-colorscripts -n squirtle | sed '1,2d'
