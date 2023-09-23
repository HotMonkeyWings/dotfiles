#!/bin/sh

# Get monitor
unfocused_monitor=$(i3-msg -t get_workspaces | jq '.[] | select(.focused==false).name' | cut -d"\"" -f2)

sway move container to $unfocused_monitor
