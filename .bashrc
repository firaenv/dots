# 
# ________  ________  ________   _______       ___    ___ ________      
#|\_____  \|\   __  \|\   ___  \|\  ___ \     |\  \  /  /|\   ____\     
# \|___/  /\ \  \|\  \ \  \\ \  \ \   __/|    \ \  \/  / | \  \___|_    
#     /  / /\ \   __  \ \  \\ \  \ \  \_|/__   \ \    / / \ \_____  \   
#    /  /_/__\ \  \ \  \ \  \\ \  \ \  \_|\ \   \/  /  /   \|____|\  \  
#   |\________\ \__\ \__\ \__\\ \__\ \_______\__/  / /       ____\_\  \ 
#    \|_______|\|__|\|__|\|__| \|__|\|_______|\___/ /       |\_________\ 
#                                            \|___|/        \|_________| 
#                                                                       
#  ________  ________  ________  ___  ___  ________  ________           
# |\   __  \|\   __  \|\   ____\|\  \|\  \|\   __  \|\   ____\          
# \ \  \|\ /\ \  \|\  \ \  \___|\ \  \\\  \ \  \|\  \ \  \___|          
#  \ \   __  \ \   __  \ \_____  \ \   __  \ \   _  _\ \  \             
# __\ \  \|\  \ \  \ \  \|____|\  \ \  \ \  \ \  \\  \\ \  \____        
#|\__\ \_______\ \__\ \__\____\_\  \ \__\ \__\ \__\\ _\\ \_______\      
#\|__|\|_______|\|__|\|__|\_________\|__|\|__|\|__|\|__|\|_______|      
#                        \|_________|                                   
#                                                                       

# If not running interactively, don't do anything 
[[ $- != *i* ]] && return 

stty -ixon # Disables ctrl-s and ctrl-q (Used To Pause Term) 

## ALIASES ## 

# navigation 
alias ..='cd ..' 
alias ...='cd ../..' 

alias ls='lsd' 
alias p='doas pacman' 

# vim 
alias v='vim' 

# Add Color
alias grep='grep --color=auto' 

PS1="\[\e[32m\]\h\[\e[m\]\[\e[36m\]@\[\e[m\]\[\e[34m\]\u\[\e[m\] \W \$ " 

pokemon-colorscripts -n gastly | sed '1,2d'

eval "$(thefuck --alias)"

setKeyboardLight () {
    dbus-send --system --type=method_call  --dest="org.freedesktop.UPower" "/org/freedesktop/UPower/KbdBacklight" "org.freedesktop.UPower.KbdBacklight.SetBrightness" int32:$1 
}

