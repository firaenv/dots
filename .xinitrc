picom -CGb --experimental-backends &
nitrogen --restore &
xrdb -merge ~/.Xresources &
dwmstatus &

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

while true ; do
	dwm >/dev/null 2>&1
done
