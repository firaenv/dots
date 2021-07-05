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

# Archive Extraction
# Usage: ex <file>
ex ()
{
	if [ -f $1 ] ; then
		case $1 in
			*.tar.bz2)	tar xjf $1	;;
			*.tar.gz)	tar xzf $1	;;
			*.bz2)		bunzip2 $1	;;
			*.rar)		unrar x $1	;;
			*.gz)		gunzip $1	;;
			*.tar)		tar xf $1	;;
			*.tbz2)		tar xjf $1	;;
			*.tgz)		tar xzf $1	;;
			*.zip)		unzip $1	;;
			*.7z)		7z x $1		;;
			*.tar.xz)	tar xf $1	;;
			*.tar.zst)	unzstd $1	;;
			*)		echo "'$1' cannot be extracted via ex()" ;;
		esac
	else
		echo "'$1' is not a valid file"
	fi
}

## ALIASES ##

# navigation
alias ..='cd ..'
alias ...='cd ../..'

alias ls='lsd'
alias p='sudo pacman'
alias wifispeed='speedometer -r wlp2s0'

# pacman
alias p='sudo pacman'
alias pacsyu='sudo pacman -Syyu'

# vim
alias v='vim'
alias sv='sudo vim'

# ranger
alias r='ranger'
alias sr='sudo ranger'

# Add Color
alias grep='grep --color=auto'
