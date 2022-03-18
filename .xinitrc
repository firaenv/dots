#!/bin/sh

# xsetroot -cursor_name left_ptr &
xsetroot -name " " &

### START COMPOSITOR ###
picom -b --experimental-backends &

### START NOTIFICATIONS ###
dunst &

### SETTING WALLPAPER ###
nitrogen --restore &

exec dwm
