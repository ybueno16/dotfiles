#!/bin/bash

# Terminate already running bar instances
killall -q polybar

# Launch Polybar, using default config location ~/.config/polybar/config
polybar --config=$HOME/.config/polybar/config.ini main &

echo "Polybar launched..."
