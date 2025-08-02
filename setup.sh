#!/bin/sh

# Script to setup applications I like to use how I like to use them.

######################
### WINDOW MANAGER ###
######################

# Top bar font
unzip ./fonts/NerdFontsSymbolsOnly.zip ./fonts/
chmod 644 ./SymbolsNerdFont*
mkdir -p ~/.local/share/fonts
cp ./SymbolsNerdFont* ~/.local/share/fonts

###############################
### WINDOW MANAGER FEATURES ###
###############################

# File manager - Thunar 
sudo apt install -y thunar xfce4-settings --no-install-recommends

# gnome-screenshot - screenshots
sudo apt install -y gnome-screenshot --no-install-recommends

# Font
sudo apt install -y fonts-powerline tmux

########
# BASH #
########

###############################
# XMODMAP (KEYBOARD MAPPINGS) #
###############################

cp ./xmodmap/Xmodmap ~/.Xmodmap