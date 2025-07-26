#!/usr/bin/env bash

config="$HOME/.config/rofi/power-menu.rasi"

actions=$(echo -e "  Shutdown\n  Reboot\n  Suspend\n󰞘  Logout")

# Display logout menu
selected_option=$(echo -e "$actions" | rofi -dmenu -i -config "${config}" || pkill -x rofi)

# Perform actions based on the selected option
case "$selected_option" in
*Shutdown)
  systemctl poweroff
  ;;
*Reboot)
  systemctl reboot
  ;;
*Suspend)
  systemctl suspend
  ;;
*Logout)
  hyprctl dispatch exit
  ;;
esac


