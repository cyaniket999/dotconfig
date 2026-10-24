# Export session variables
#export XDG_SESSION_TYPE=x11
#export XDG_CURRENT_DESKTOP=Unity

# Update D-Bus and systemd environment with those variables
if command -v dbus-update-activation-environment >/dev/null 2>&1; then
    dbus-update-activation-environment --systemd DISPLAY XDG_CURRENT_DESKTOP XDG_SESSION_TYPE
fi
#feh --bg-fill ~/Pictures/backgrounds/wall.png &
# Restore the last applied Pywal color palette
wal -R &

# Load last generated Xresources
xrdb -merge ~/.cache/wal/colors.Xresources &
xrdb -merge ~/.cache/wal/dwm.Xresources &

picom &

# Kill any existing instance before launching dwmblocks
killall dwmblocks
dwmblocks &

# Restart loop for dwm
while true; do
    dwm 2> ~/.dwm.log
done
