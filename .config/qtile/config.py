#
# ________  ________  ________   _______       ___    ___ ________           ________  _________  ___  ___       _______       
#|\_____  \|\   __  \|\   ___  \|\  ___ \     |\  \  /  /|\   ____\         |\   __  \|\___   ___\\  \|\  \     |\  ___ \      
# \|___/  /\ \  \|\  \ \  \\ \  \ \   __/|    \ \  \/  / | \  \___|_        \ \  \|\  \|___ \  \_\ \  \ \  \    \ \   __/|     
#     /  / /\ \   __  \ \  \\ \  \ \  \_|/__   \ \    / / \ \_____  \        \ \  \\\  \   \ \  \ \ \  \ \  \    \ \  \_|/__   
#    /  /_/__\ \  \ \  \ \  \\ \  \ \  \_|\ \   \/  /  /   \|____|\  \        \ \  \\\  \   \ \  \ \ \  \ \  \____\ \  \_|\ \  
#   |\________\ \__\ \__\ \__\\ \__\ \_______\__/  / /       ____\_\  \        \ \_____  \   \ \__\ \ \__\ \_______\ \_______\ 
#    \|_______|\|__|\|__|\|__| \|__|\|_______|\___/ /       |\_________\        \|___| \__\   \|__|  \|__|\|_______|\|_______| 
#                                            \|___|/        \|_________|              \|__|                                    
#                                                                                                                              
#                                                                                                                              
# ________  ________  ________   ________ ___  ________  ___  ___  ________  ________  _________  ___  ________  ________      
#|\   ____\|\   __  \|\   ___  \|\  _____\\  \|\   ____\|\  \|\  \|\   __  \|\   __  \|\___   ___\\  \|\   __  \|\   ___  \    
#\ \  \___|\ \  \|\  \ \  \\ \  \ \  \__/\ \  \ \  \___|\ \  \\\  \ \  \|\  \ \  \|\  \|___ \  \_\ \  \ \  \|\  \ \  \\ \  \   
# \ \  \    \ \  \\\  \ \  \\ \  \ \   __\\ \  \ \  \  __\ \  \\\  \ \   _  _\ \   __  \   \ \  \ \ \  \ \  \\\  \ \  \\ \  \  
#  \ \  \____\ \  \\\  \ \  \\ \  \ \  \_| \ \  \ \  \|\  \ \  \\\  \ \  \\  \\ \  \ \  \   \ \  \ \ \  \ \  \\\  \ \  \\ \  \ 
#   \ \_______\ \_______\ \__\\ \__\ \__\   \ \__\ \_______\ \_______\ \__\\ _\\ \__\ \__\   \ \__\ \ \__\ \_______\ \__\\ \__\
#    \|_______|\|_______|\|__| \|__|\|__|    \|__|\|_______|\|_______|\|__|\|__|\|__|\|__|    \|__|  \|__|\|_______|\|__| \|__|
#                                                                                                                              

from typing import List  # noqa: F401

from libqtile import qtile, bar, layout, widget, hook
from libqtile.config import KeyChord, Click, Drag, Group, Key, Match, Screen
from libqtile.lazy import lazy
from libqtile.command import lazy
import os
import re
import socket
import subprocess

mod = "mod4"
terminal = "st"

keys = [
    # Switch between windows
    Key([mod], "h", lazy.layout.left(), desc="Move focus to left"),
    Key([mod], "l", lazy.layout.right(), desc="Move focus to right"),
    Key([mod], "j", lazy.layout.down(), desc="Move focus down"),
    Key([mod], "k", lazy.layout.up(), desc="Move focus up"),
    Key([mod], "space", lazy.layout.next(),
        desc="Move window focus to other window"),

    # Move windows between left/right columns or move up/down in current stack.
    # Moving out of range in Columns layout will create new column.
    Key([mod, "shift"], "h", lazy.layout.shuffle_left(),
        desc="Move window to the left"),
    Key([mod, "shift"], "l", lazy.layout.shuffle_right(),
        desc="Move window to the right"),
    Key([mod, "shift"], "j", lazy.layout.shuffle_down(),
        desc="Move window down"),
    Key([mod, "shift"], "k", lazy.layout.shuffle_up(), desc="Move window up"),

    # Grow windows. If current window is on the edge of screen and direction
    # will be to screen edge - window would shrink.
    Key([mod, "control"], "h", lazy.layout.grow_left(),
        desc="Grow window to the left"),
    Key([mod, "control"], "l", lazy.layout.grow_right(),
        desc="Grow window to the right"),
    Key([mod, "control"], "j", lazy.layout.grow_down(),
        desc="Grow window down"),
    Key([mod, "control"], "k", lazy.layout.grow_up(), desc="Grow window up"),
    Key([mod], "n", lazy.layout.normalize(), desc="Reset all window sizes"),

    Key([mod], "Return", lazy.spawn(terminal), desc="Launch terminal"),

    # Toggle between different layouts as defined below
    Key([mod], "Tab", lazy.next_layout(), desc="Toggle between layouts"),
    Key([mod], "q", lazy.window.kill(), desc="Kill focused window"),

    Key([mod, "control"], "r", lazy.restart(), desc="Restart Qtile"),
    Key([mod, "control"], "q", lazy.shutdown(), desc="Shutdown Qtile"),
    Key([mod, "shift"], "Return", lazy.spawncmd(),
        desc="Spawn a command using a prompt widget"),

    # My Application Shortcuts
    Key([mod], "w", lazy.spawn("qutebrowser"), desc="Launch Web Browser"),
    Key([mod], "d", lazy.spawn("discord"), desc="Launch Discord"),
    Key([mod], "o", lazy.spawn("obs"), desc="Launch OBS Studio"),
    Key([mod], "g", lazy.spawn("gimp"), desc="Launch GNU Image Manipulation Program"),
    Key([mod], "v", lazy.spawn("vlc"), desc="Launch VLC Media Player"),
    Key([mod, "shift"], "o", lazy.spawn("olive-editor"), desc="Launch Olive Video Editor"),
    Key([mod], "f", lazy.spawn("pcmanfm"), desc="Launch File Browser"),

    ### Switch focus of monitors
    Key([mod], "period",
    	lazy.next_screen(),
        desc='Move focus to next monitor'
        ),
    Key([mod], "comma",
    	lazy.prev_screen(),
        desc='Move focus to prev monitor'
        ),

]


group_names = [("WRK", {'layout': 'monadtall'}),
               ("WEB", {'layout': 'monadtall'}),
               ("STM", {'layout': 'monadtall'}),
               ("ITCH", {'layout': 'monadtall'}),
               ("CHAT", {'layout': 'monadtall'}),
               ("MUS", {'layout': 'monadtall'}),
               ("VID", {'layout': 'monadtall'})]

groups = [Group(name, **kwargs) for name, kwargs in group_names]

for i, (name, kwargs) in enumerate(group_names, 1):
    keys.append(Key([mod], str(i), lazy.group[name].toscreen()))        # Switch to another group
    keys.append(Key([mod, "shift"], str(i), lazy.window.togroup(name))) # Send current window to another group

layout_theme = {"border_width": 2,
                "margin": 4,
                "border_focus": "#2494f8",
                "border_normal": "#1e141f"
                }

layouts = [
    # layout.Columns(border_focus_stack='#d75f5f'),
    # layout.Max(),
    # Try more layouts by unleashing below layouts.
    # layout.Stack(num_stacks=2),
    # layout.Bsp(),
    # layout.Matrix(),
    layout.MonadTall(**layout_theme),
    # layout.MonadWide(),
    # layout.RatioTile(),
    # layout.Tile(),
    # layout.TreeTab(),
    # layout.VerticalTile(),
    # layout.Zoomy(),
]

widget_defaults = dict(
    font='SpaceMono Nerd Font Mono',
    fontsize=14,
    padding=2,
    background="#102842",
)
extension_defaults = widget_defaults.copy()

screens = [
    Screen(
        top=bar.Bar(
            [
                widget.GroupBox(
                    font="SpaceMono Nerd Font Mono",
                    fontsize=14,
                    margin_y=4,
                    margin_x=1,
                    padding_y=2,
                    padding_x=4,
                    borderwidth=3,
                    active="#eff1f5",
                    inactive="#65737e",
                    rounded=False,
                    highlight_color="#5294e2",
                    highlight_method="line",
                    ),
                widget.Prompt(
		    background="#5294e2",
		    font="Ubuntu Bold",
		    foreground="#eff1f5",
		    prompt="Run: ",
		    padding=10,
		    ),
                widget.Spacer(length=bar.STRETCH),
                widget.Clock(
		    format='%a %I:%M %p',
		    font="Ubuntu Bold",
		    padding=5,
		    ),
                widget.Systray(),
            ],
            24,
            opacity=0.9,
        ),
    ),
]

# Drag floating layouts.
mouse = [
    Drag([mod], "Button1", lazy.window.set_position_floating(),
         start=lazy.window.get_position()),
    Drag([mod], "Button3", lazy.window.set_size_floating(),
         start=lazy.window.get_size()),
    Click([mod], "Button2", lazy.window.bring_to_front())
]

dgroups_key_binder = None
dgroups_app_rules = []  # type: List
main = None  # WARNING: this is deprecated and will be removed soon
follow_mouse_focus = True
bring_front_click = False
cursor_warp = False
floating_layout = layout.Floating(float_rules=[
    # Run the utility of `xprop` to see the wm class and name of an X client.
    *layout.Floating.default_float_rules,
    Match(wm_class='confirmreset'),  # gitk
    Match(wm_class='makebranch'),  # gitk
    Match(wm_class='maketag'),  # gitk
    Match(wm_class='ssh-askpass'),  # ssh-askpass
    Match(wm_class='pcmanfm'), # file browser
    Match(wm_class='steam'), # steam
    Match(title='branchdialog'),  # gitk
    Match(title='pinentry'),  # GPG key password entry
], **layout_theme)
auto_fullscreen = True
focus_on_window_activation = "smart"

wmname = "LG3D"
