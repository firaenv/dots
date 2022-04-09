xsetroot -name " " &
xrdb -load $HOME/.Xresources &

### START COMPOSITOR ###
picom --animations --animation-window-mass 0.5 --animation-for-open-window zoom --animation-stiffness 350 &

### START NOTIFICATIONS ###
dunst &

### SETTING WALLPAPER ###
feh --bg-fill ~/Pictures/Wallpapers/solarized_puffy.png &

exec dwm
