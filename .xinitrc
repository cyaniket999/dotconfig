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
