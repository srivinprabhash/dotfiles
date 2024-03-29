#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar
# If all your bars have ipc enabled, you can also use 
# polybar-msg cmd quit

# Launch primary bar
echo "---" | tee -a /tmp/polybar-primary.log
polybar primary 2>&1 | tee -a /tmp/polybar-primary.log & disown
echo "Bars launched ..."
