#!/usr/bin/env bash

### Kill existing polybar sessions
polybar-msg cmd quit
# killall -q polybar

### Manually launch bar on all monitors

polybar main 2>&1 | tee -a /tmp/polybar1.log & disown
polybar secondary 2>&1 | tee -a /tmp/polybar1.log & disown

# ### Try to launch on all monitors
# screens=$(xrandr --listactivemonitors | cut -d " " -f 6)

# for screen in $screens; do
#     # echo $screen
#     export MONITOR=$screen
#     echo $MONITOR
#     polybar main 2>&1 | tee -a /tmp/polybar1.log &
#     disown
#     sleep 1
# done