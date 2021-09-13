#!/bin/bash

xrdb -merge ~/.Xresources &
xsetroot -cursor_name left_ptr &

### START COMPOSITOR ###
picom -b &

### START NOTIFICATIONS ###
dunst &

### SETTING WALLPAPER ###
# nitrogen --restore &
feh --no-fehbg --bg-scale $HOME/Pictures/Wallpapers/Retrowave\ Highway.jpg &

### FOR LAPTOPS UNCOMMENT ###
# batteryindicator &

yourabitch &
YTnotif &

while true ; do
	dwm >/dev/null 2>&1
done
