#!/usr/bin/env bash

PATH=$HOME/bin:/root/.cargo/bin:$HOME/.local/bin:$HOME/.local/bin/dmenuscripts:$HOME/.cargo/bin:/bin:/sbin:/usr/bin:/usr/sbin:/usr/X11R6/bin:/usr/local/bin:/usr/local/sbin:/usr/games
TERM=/usr/local/bin/kitty
EDITOR=/usr/local/bin/vim
BROWSER=/usr/local/bin/chromium
SCRIPTDIR=$HOME/.local/share/scriptdeps
ENV=$HOME/.kshrc
LANG=en_US.UTF-8
QT_QPA_PLATFORMTHEME=qt5ct
XDG_DATA_DIRS=/usr/local/share
AUDIOPLAYDEVICE=snd/0
AUDIORECDEVICE=snd/2
export PATH TERM EDITOR BROWSER SCRIPTDIR ENV LANG QT_QPA_PLATFORMTHEME
export XDG_DATA_DIRS AUDIOPLAYDEVICE AUDIORECDEVICE

xrdb -merge $HOME/.Xresources &
picom -b &
exec dwm
