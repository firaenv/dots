# If not running interactively, don't do anything 
[[ $- != *i* ]] && return 

stty -ixon # Disables ctrl-s and ctrl-q (Used To Pause Term) 

# Aliases
alias ..='cd ..' 
alias ...='cd ../..' 
alias ls='lsd'
alias df='df -h'

# Add Color
alias egrep='grep --color=auto' 

# PS1 Customization
pokemon-colorscripts -n aipom | sed '1,2d'
PS1="\[\e[32m\]\h\[\e[m\]\[\e[36m\]@\[\e[m\]\[\e[34m\]\u\[\e[m\] \W \$ " 

PATH=$HOME/bin:/root/.cargo/bin:$HOME/.local/bin:$HOME/.local/bin/dmenuscripts:$HOME/.cargo/bin:/bin:/sbin:/usr/bin:/usr/sbin:/usr/X11R6/bin:/usr/local/bin:/usr/local/sbin:/usr/games
BROWSER=/usr/local/bin/chromium
EDITOR=/usr/local/bin/vim
TERM=xterm
SCRIPTDIR=$HOME/.local/share/scriptdeps

export PATH HOME TERM BROWSER EDITOR SCRIPTDIR
