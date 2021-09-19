#!/bin/bash

# Find desktops
monitor_1_id=$(bspc query -D -d .active -m HDMI-0)
monitor_1_name=$(bspc query -D -d .active -m HDMI-0 --names)
monitor_2_id=$(bspc query -D -d .active -m DP-0)
monitor_2_name=$(bspc query -D -d .active -m DP-0 --names)

# Now to swap names
bspc desktop $monitor_2_id -n $monitor_1_name
bspc desktop $monitor_1_id -n $monitor_2_name

# Swaps the monitors
bspc desktop $monitor_1_id -s $monitor_2_id 


