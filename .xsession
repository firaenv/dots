PATH=$HOME/bin:/root/.cargo/bin:$HOME/.local/bin:$HOME/.local/bin/dmenuscripts:$HOME/.cargo/bin:/bin:/sbin:/usr/bin:/usr/sbin:/usr/X11R6/bin:/usr/local/bin:/usr/local/sbin:/usr/games
TERM=xterm
EDITOR=/usr/local/bin/vim
BROWSER=/usr/local/bin/chromium
SCRIPTDIR=$HOME/.local/share/scriptdeps
QT_QPA_PLATFORMTHEME=qt5ct
ENV=$HOME/.kshrc
LANG=en_US.UTF-8
export PATH TERM EDITOR BROWSER SCRIPTDIR ENV LANG QT_QPA_PLATFORMTHEME
xset b off &
xrdb -load $HOME/.Xresources &
maxvol &
picom --animations --animation-window-mass 0.5 --animation-for-open-window zoom --animation-stiffness 350 &
dunst &
feh --bg-fill ~/Pictures/Wallpapers/Protruding\ Squares.png &
xrandr -r 120 &
cwm
