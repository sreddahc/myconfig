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

############
### TMUX ###
############

# Font
sudo apt install -y fonts-powerline tmux

# Config
cp ./tmux/tmux.conf ~/.tmux.conf

###########
### VIM ###
###########

# Setup vim
sudo apt -y install vim
# sudo dnf -y install vim-enhanced
cp ./vim/vimrc ~/.vimrc

########
# BASH #
########

###############################
# XMODMAP (KEYBOARD MAPPINGS) #
###############################

cp ./xmodmap/Xmodmap ~/.Xmodmap