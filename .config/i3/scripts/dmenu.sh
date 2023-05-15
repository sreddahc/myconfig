#!/bin/bash
# -----
# Script for launching dmenu with custom colours
# -----

# Colours
# yellow = f0c674
# red = da3450
normal_foreground=#da3450
normal_background=#000000
selected_foreground=#000000
selected_background=#da3450

# Launch dmenu
dmenu_run -nb $normal_background -sf $selected_foreground -sb $selected_background -nf $normal_foreground
