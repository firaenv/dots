#!/usr/bin/env bash

PATH=$HOME/bin:/root/.cargo/bin:$HOME/.local/bin:$HOME/.local/bin/dmenuscripts:$HOME/.cargo/bin:/bin:/sbin:/usr/bin:/usr/sbin:/usr/X11R6/bin:/usr/local/bin:/usr/local/sbin:/usr/games
TERM=/usr/local/bin/kitty
EDITOR=/usr/local/bin/vim
BROWSER=/usr/local/bin/firefox
SCRIPTDIR=$HOME/.local/share/scriptdeps
LANG=en_US.UTF-8
QT_QPA_PLATFORMTHEME=qt5ct
export PATH TERM EDITOR BROWSER SCRIPTDIR ENV LANG QT_QPA_PLATFORMTHEME

picom -b --animations --animation-window-mass 0.5 --animation-for-open-window zoom --animation-stiffness 350 &

xrandr --output HDMI-A-0 --mode 2560x1080 --pos 1920x0 --rotate right --output DisplayPort-0 --off --output HDMI-A-1 --primary --mode 1920x1080 --pos 0x178 --rotate normal &

exec bspwm
