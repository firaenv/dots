xsetroot -name " " &
xrdb -load $HOME/.Xresources &
xrandr --output DP-1 --primary --mode 2560x1440 --rate 165 --pos 0x0 --rotate normal --output DP-2 --off --output DP-3 --off --output HDMI-1 --off &

### START COMPOSITOR ###
picom -b --experimental-backends &

### START NOTIFICATIONS ###
dunst &

### SETTING WALLPAPER ###
feh --bg-fill ~/Pictures/Wallpapers/openbsd_catppuccin.png &

exec dwm
