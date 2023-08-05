#!/bin/sh
# -----
# Script to setup i3
# -----

### Dependencies

# i3 = window manager
# polybar = top bar
# feh = required for wallpaper
# picom = compositor (required for transparency) [alternative=comptom]

sudo apt install -y i3 polybar feh picom

# thunar = file manager
# xfce4-settings (to customise background settings)
# gnome-screenshot = screenshots
sudo apt install -y thunar xfce4-settings gnome-screenshot --no-install-recommends

### Setup

# Wallpapers folder
mkdir ~/Pictures ~/Pictures/wallpapers

# Setup i3, polybar and picom
cp -r ./config/* ~/.config/

# Setup vim
cp ./vimrc ~/.vimrc
