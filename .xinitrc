#!/bin/bash

xrdb -merge ~/.Xresources &
xsetroot -cursor_name left_ptr &

### START COMPOSITOR ###
picom -b &

### START NOTIFICATIONS ###
dunst &

### FOR LAPTOPS UNCOMMENT ###
# batteryindicator &

yourabitch &
YTnotif &

### SETTING WALLPAPER ###
nitrogen --restore &
# feh --no-fehbg --bg-scale $HOME/Pictures/Wallpapers/Purple\ Landscape\ Ultrawide.png &

qtile start

# while true ; do
#	dwm >/dev/null 2>&1
# done

