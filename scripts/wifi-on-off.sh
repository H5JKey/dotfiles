#!/usr/bin/env bash

# Toggle Wi-Fi state
if nmcli radio wifi | grep -q "enabled"; then
    nmcli radio wifi off
else
    nmcli radio wifi on
fi

# Update Waybar
pkill -RTMIN+8 waybar
