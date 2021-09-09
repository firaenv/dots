#!/bin/bash

picom -CGb &
nitrogen --restore &
dunst &
xrdb -merge ~/.Xresources &
xsetroot -cursor_name left_ptr &
### FOR LAPTOPS UNCOMMENT ###
# batteryindicator &
yourabitch &
YTnotif &

while true ; do
	dwm >/dev/null 2>&1
done
