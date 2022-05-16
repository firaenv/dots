#!/usr/bin/env bash

PATH=$HOME/bin:/root/.cargo/bin:$HOME/.local/bin:$HOME/.local/bin/dmenuscripts:$HOME/.cargo/bin:/bin:/sbin:/usr/bin:/usr/sbin:/usr/X11R6/bin:/usr/local/bin:/usr/local/sbin:/usr/games
TERM=/usr/local/bin/alacritty
EDITOR=/usr/local/bin/vim
BROWSER=/usr/local/bin/firefox
SCRIPTDIR=$HOME/.local/share/scriptdeps
LANG=en_US.UTF-8
QT_QPA_PLATFORMTHEME=qt5ct
export PATH TERM EDITOR BROWSER SCRIPTDIR ENV LANG QT_QPA_PLATFORMTHEME

xrdb -load $HOME/.Xresources &

### START COMPOSITOR ###
picom -b --animations --animation-window-mass 0.5 --animation-for-open-window zoom --animation-stiffness 350 &

exec bspwm
