#!/usr/bin/env bash

# Options with Nerd Font icons
LOCK="󰌾 Lock"
LOGOUT="󰍃 Logout"
REBOOT="󰜎 Reboot"
SHUTDOWN="󰐥 Power Off"

# Path definitions
PYWAL_CACHE="$HOME/.cache/wal/colors-rofi-dark.rasi"
ROFI_DIR="$HOME/.config/rofi/power-menu"

# Select config based on Pywal availability
if [ -s "$PYWAL_CACHE" ]; then
    THEME="$ROFI_DIR/power-menu-pywal.rasi"
else
    THEME="$ROFI_DIR/power-menu.rasi"
fi

# Run Rofi and pass options
CHOSEN=$(printf "$LOCK\n$LOGOUT\n$REBOOT\n$SHUTDOWN" | rofi -dmenu -p "Power Menu" -config "$THEME")

# Execute action based on selection
case "$CHOSEN" in
    "$LOCK")
        # Replace with your lock command (e.g., hyprlock, swaylock, i3lock)
        loginctl lock-session
        ;;
    "$LOGOUT")
        loginctl terminate-user $USER
        ;;
    "$REBOOT")
        systemctl reboot
        ;;
    "$SHUTDOWN")
        systemctl poweroff
        ;;
esac