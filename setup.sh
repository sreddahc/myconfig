#!/bin/sh

# Script to setup applications I like to use how I like to use them.

######################
### WINDOW MANAGER ###
######################

# Window manager - i3
sudo apt install -y i3
cp -r ./i3 ~/.config/

# Top bar - polybar
sudo apt install -y polybar
cp -r ./polybar ~/.config/

# Compositor - picom (transparency) [alternative=comptom]
sudo apt install -y picom
mkdir ~/.config/picom
cp ./picom/picom.conf ~/.config/picom/

# Wallpaper
sudo apt install -y feh
mkdir ~/Pictures ~/Pictures/wallpapers

###############################
### WINDOW MANAGER FEATURES ###
###############################

# File manager - Thunar 
sudo apt install -y thunar xfce4-settings --no-install-recommends

# gnome-screenshot - screenshots
sudo apt install -y gnome-screenshot --no-install-recommends

# Notifications
sudo apt install -y dunst
mkdir ~/.config/dunst
cp ./dunst/dunstrc ~/.config/dunst/

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
