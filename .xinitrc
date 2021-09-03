#!/bin/bash

picom -CGb --experimental-backends &
nitrogen --restore &
tlp start &
xrdb -merge ~/.Xresources &
xsetroot -cursor_name left_ptr &
batteryindicator &
yourabitch &
YTnotif &

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

exec xmonad
# while true ; do
# 	dwm >/dev/null 2>&1
# done
