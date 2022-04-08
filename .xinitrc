xsetroot -name " " &
xrdb -load $HOME/.Xresources &
xrandr --output DP-1 --primary --mode 2560x1440 --rate 120 --pos 0x0 --rotate normal --output DP-2 --off --output DP-3 --off --output HDMI-1 --off &

### START COMPOSITOR ###
picom --animations --animation-window-mass 0.5 --animation-for-open-window zoom --animation-stiffness 350 &

### START NOTIFICATIONS ###
dunst &

### SETTING WALLPAPER ###
feh --bg-fill ~/Pictures/Wallpapers/solarized_puffy.png &

exec dwm
