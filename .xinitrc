#!/bin/bash

xrdb -merge ~/.Xresources &
setxkbmap -option ctrl:nocaps &
xsetroot -cursor_name left_ptr &

### START COMPOSITOR ###
picom -b &

### START NOTIFICATIONS ###
dunst &

### SAVE YOUR EYES ###
sct 5000 &

### SETTING WALLPAPER ###
nitrogen --restore &

### DWM STATUS ###
dwmstatus &

exec dwm

