picom -CGb --experimental-backends &
./.scripts/dwmstatus &
nitrogen --restore &
xrdb ~/.Xresources &
while true ; do
	dwm >/dev/null 2>&1
done
