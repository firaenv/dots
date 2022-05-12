#!/usr/bin/env ksh

PATH=$HOME/bin:/root/.cargo/bin:$HOME/.local/bin:$HOME/.local/bin/dmenuscripts:$HOME/.cargo/bin:/bin:/sbin:/usr/bin:/usr/sbin:/usr/X11R6/bin:/usr/local/bin:/usr/local/sbin:/usr/games
TERM=/usr/local/bin/alacritty
EDITOR=/usr/local/bin/vim
BROWSER=/usr/local/bin/firefox
SCRIPTDIR=$HOME/.local/share/scriptdeps
ENV=$HOME/.kshrc
LANG=en_US.UTF-8
QT_QPA_PLATFORMTHEME=qt5ct
XDG_DATA_DIRS=/usr/local/share
AUDIOPLAYDEVICE=snd/0
AUDIORECDEVICE=snd/2
export PATH TERM EDITOR BROWSER SCRIPTDIR ENV LANG QT_QPA_PLATFORMTHEME
export XDG_DATA_DIRS AUDIOPLAYDEVICE AUDIORECDEVICE

xset b off &
xrdb -merge $HOME/.Xresources &
picom --animations --animation-window-mass 0.5 --animation-for-open-window zoom --animation-stiffness 350 &
xrandr --output HDMI-A-0 --primary --mode 2560x1440 --rate 120 --pos 0x801 --rotate normal --output HDMI-A-1 --mode 2560x1080 --rate 60 --pos 2560x0 --rotate right &
bspwm
