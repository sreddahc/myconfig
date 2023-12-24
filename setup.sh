#!/bin/sh

# Script to setup applications I like to use how I like to use them.

######################
### WINDOW MANAGER ###
######################

### Dependencies

# i3 = window manager
# polybar = top bar
# feh = required for wallpaper
# picom = compositor (required for transparency) [alternative=comptom]

sudo apt install -y i3 polybar feh picom

### Setup

# Wallpapers folder
mkdir ~/Pictures ~/Pictures/wallpapers

# Setup i3, polybar and picom
cp -r ./i3 ~/.config/
cp -r ./polybar ~/.config/
mkdir ~/.config/picom
cp ./picom/picom.conf ~/.config/picom/

###############################
### WINDOW MANAGER FEATURES ###
###############################

# thunar = file manager
# xfce4-settings (to customise background settings)
# gnome-screenshot = screenshots
sudo apt install -y thunar xfce4-settings gnome-screenshot --no-install-recommends

############
### TMUX ###
############

cp ./tmux/tmux.conf ~/.tmux.conf

###########
### VIM ###
###########

# Setup vim
sudo apt install vim
cp ./vimrc ~/.vimrc
