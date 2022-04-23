export BROWSER=/usr/local/bin/chrome
export EDITOR=/usr/local/bin/vi
export XDG_DATA_DIRS=/usr/local/share
export LANG=en_US.UTF-8
export SCRIPTDIR=$HOME/.local/share/scriptdeps
export PATH=$HOME/bin:/root/.cargo/bin:$HOME/.local/bin:$HOME/.local/bin/dmenuscripts:$HOME/.cargo/bin:/bin:/sbin:/usr/bin:/usr/sbin:/usr/X11R6/bin:/usr/local/bin:/usr/local/sbin:/usr/games

# Aliases
alias ..='cd ..' 
alias ...='cd ../..' 
alias df='df -h'
alias sensors='sysctl hw.sensors'
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

if [ "$TERM" = "linux" ]; then
		printf %b '\e[40m' '\e[8]' # set default background to color 0 'dracula-bg'
		printf %b '\e[37m' '\e[8]' # set default foreground to color 7 'dracula-fg'
		printf %b '\e]P0282a36'    # redefine 'black'          as 'dracula-bg'
		printf %b '\e]P86272a4'    # redefine 'bright-black'   as 'dracula-comment'
		printf %b '\e]P1ff5555'    # redefine 'red'            as 'dracula-red'
		printf %b '\e]P9ff7777'    # redefine 'bright-red'     as '#ff7777'
		printf %b '\e]P250fa7b'    # redefine 'green'          as 'dracula-green'
		printf %b '\e]PA70fa9b'    # redefine 'bright-green'   as '#70fa9b'
		printf %b '\e]P3f1fa8c'    # redefine 'brown'          as 'dracula-yellow'
		printf %b '\e]PBffb86c'    # redefine 'bright-brown'   as 'dracula-orange'
		printf %b '\e]P4bd93f9'    # redefine 'blue'           as 'dracula-purple'
		printf %b '\e]PCcfa9ff'    # redefine 'bright-blue'    as '#cfa9ff'
		printf %b '\e]P5ff79c6'    # redefine 'magenta'        as 'dracula-pink'
		printf %b '\e]PDff88e8'    # redefine 'bright-magenta' as '#ff88e8'
		printf %b '\e]P68be9fd'    # redefine 'cyan'           as 'dracula-cyan'
		printf %b '\e]PE97e2ff'    # redefine 'bright-cyan'    as '#97e2ff'
		printf %b '\e]P7f8f8f2'    # redefine 'white'          as 'dracula-fg'
		printf %b '\e]PFffffff'    # redefine 'bright-white'   as '#ffffff'
		clear
fi
