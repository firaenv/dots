# Table of Contents
1. [About My System](#About)
2. [Program Directory](.local/bin)
3. [Suckless](.config/suckless)
4. [Wallpapers](Pictures/Wallpapers)
4. [OpenBSD Specific](etc)

# About My System <a name="About"></a>
![](Pictures/demo.gif)

This repository is my personal dotfiles. Dotfiles are the files responsible for customization on your Unix(-like) system. This exists so that anyone can see how I have customized my system. The customization and configuration files on Unix(-like) are referred to are dotfiles, because typically they begin with a period.

## What I Use
- dwm (tiling window manager)
- rofi (program launcher)
- st (terminal)
- fff (file manager)
- cmus (music player)
- feh (Setting Wallpaper & Image Viewer)
- mpv (video player)
- discord (messaging - through browser)
- chomium (web browsing)
- kdenlive (video editing)
- htop (system monitoring)
- dunst (notifications)
- picom (compositing - *achieves the rounded corners, transparency, etc*)

### DWM Patches Used
- activetagindicatorbar (puts line at top of populated workspaces)
- actualfullscreen
- alwayscenter (windows spawn centered if floating)
- bar-height
- barpadding
- centeredwindowname
- decorhints
- ewmhtags
- pertag
- restartsig (dwm can be restarted instead of having to kill it)
- rotatestack (can move windows up and down in stack)
- rounded-corners (add them without picom needed)
- statuspadding
- sticky
- vanitygaps (adding the gap aesthetic)
- warp (when changing monitors, or window focus - cursor follows)
