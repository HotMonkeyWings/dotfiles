#!/bin/bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch Polybar, using default config location ~/.config/polybar/config

#polybar top &
#polybar top_external &
polybar --config=~/.config/polybar/config-main.ini right &
polybar --config=~/.config/polybar/config-main.ini middle &
polybar --config=~/.config/polybar/config-main.ini left &


polybar --config=~/.config/polybar/config-side.ini right &
polybar --config=~/.config/polybar/config-side.ini middle &
polybar --config=~/.config/polybar/config-side.ini left &

#secondary=$(xrandr -q | grep 'DP-0')
#if [[$secondary = *connnected* ]]; then
#    polybar top_external &
#fi

echo "Polybar launched..."
