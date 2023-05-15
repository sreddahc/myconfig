#!/bin/bash
# -----
# Script to setup i3
# -----

# Dependencies

# i3 = window manager
# polybar = top bar
# feh = required for wallpaper
# picom = compositor (required for transparency) [alternative=comptom]

sudo apt install i3 polybar feh picom

# thunar = file manager
# xfce4-settings (to customise background settings)
# gnome-screenshot = screenshots
sudo apt install thunar xfce4-settings gnome-screenshot --no-install-recommends