# disable system beep
xset b off

# use UTF-8 everywhere
export LANG=en_US.UTF-8

# load Xresources file
xrdb -merge $HOME/.Xresources

# use caps lock as ctrl key
setxkbmap -option ctrl:nocaps
