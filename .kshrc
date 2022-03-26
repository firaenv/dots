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

pokemon-colorscripts -n aipom | sed '1,2d'
# PS1='$(print -n "`logname`@`hostname`:";if [[ "${PWD#$HOME}" != "$PWD" ]] then; print -n "~${PWD#$HOME}"; else; print -n "$PWD";fi;print "$ ")'
