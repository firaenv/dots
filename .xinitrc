#!/usr/bin/env bash

PATH=$HOME/bin:/root/.cargo/bin:$HOME/.local/bin:$HOME/.local/bin/dmenuscripts:$HOME/.cargo/bin:/bin:/sbin:/usr/bin:/usr/sbin:/usr/X11R6/bin:/usr/local/bin:/usr/local/sbin:/usr/games
SCRIPTDIR=$HOME/.local/share/scriptdeps
QT_QPA_PLATFORMTHEME=qt5ct
export PATH SCRIPTDIR QT_QPA_PLATFORMTHEME

feh --bg-fill ~/Pictures/Wallpapers/FusionA1.png &
picom --animations --animation-window-mass 0.5 --animation-for-open-window zoom --animation-stiffness 350 &
dunst &
xrdb -merge $HOME/.Xresources &
xset r rate 200 50 &
source ~/.profile &
exec dwm
