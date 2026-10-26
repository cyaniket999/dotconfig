#!/bin/sh

# Update D-Bus & systemd environment (essential for GUI app permissions and notification daemons)
if command -v dbus-update-activation-environment >/dev/null 2>&1; then
    dbus-update-activation-environment --systemd DISPLAY XDG_CURRENT_DESKTOP XDG_SESSION_TYPE
fi

# Load Xresources into memory
xrdb -merge ~/.Xresources

# Restore wallpaper & theme
wal -R &

# Start compositor & notifications
picom &
dunst &

# Start status bar (kill existing instances first)
killall -q dwmblocks
dwmblocks &

# Restart loop for dwm
while true; do
    dwm 2> ~/.dwm.log
done