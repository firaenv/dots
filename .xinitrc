#!/bin/bash

xrdb -merge ~/.Xresources &
xset s off &
xset -dpms &
# xsetroot -cursor_name left_ptr &
xrandr --output DisplayPort-0 --primary --mode 2560x1440 --pos 1080x980 --rotate normal --rate 165 --output DisplayPort-1 --off --output DisplayPort-2 --off --output HDMI-A-0 --mode 2560x1080 --pos 0x0 --rotate left

### START COMPOSITOR ###
picom -b &

### START NOTIFICATIONS ###
dunst &

### SAVE YOUR EYES ###
# sct 5000 &

### SETTING WALLPAPER ###
nitrogen --restore &

### DWM STATUS ###
dwmstatus &

exec dwm

