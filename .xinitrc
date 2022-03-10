#!/bin/sh

xrdb -merge ~/.Xresources &
xsetroot -name " " &
# xsetroot -cursor_name left_ptr &
xrandr --output DisplayPort-0 --primary --mode 2560x1440 --rate 165 --pos 1080x480 --rotate normal --output DisplayPort-1 --off --output DisplayPort-2 --off --output HDMI-A-0 --mode 1920x1080 --pos 0x0 --rotate left

### START COMPOSITOR ###
picom -b --experimental-backends &

### START NOTIFICATIONS ###
dunst &

### SETTING WALLPAPER ###
nitrogen --restore &

### DWM STATUS ###
# dwmstatus &

exec dwm

