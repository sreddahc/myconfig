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

# Config
mkdir -p ~/.bashrc.d
cp -r ./bash/bashrc.d/* ~/.bashrc.d

# Add to .bashrc
if [ -z "$(command cat ~/.bashrc | command grep '# myconfig - bashrc customisations')" ]; then

    echo '
# myconfig - bashrc customisations
for file in ~/.bashrc.d/*.bashrc;
do
source "$file"
done' >> ~/.bashrc

fi

###############################
# XMODMAP (KEYBOARD MAPPINGS) #
###############################

cp ./xmodmap/Xmodmap ~/.Xmodmap