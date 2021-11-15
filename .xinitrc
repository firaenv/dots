#!/bin/bash

xrdb -merge ~/.Xresources &
xsetroot -cursor_name left_ptr &

### START COMPOSITOR ###
picom -b --experimental-backends &

### START NOTIFICATIONS ###
dunst &

### FOR LAPTOPS UNCOMMENT ###
# batteryindicator &

sct 5000 &
# yourabitch &
# YTnotif &

### SETTING WALLPAPER ###
nitrogen --restore &
# feh --no-fehbg --bg-scale $HOME/Pictures/Wallpapers/Purple\ Landscape\ Ultrawide.png &

exec dwm
# qtile start

# while true ; do
#   	dwm >/dev/null 2>&1
# done

