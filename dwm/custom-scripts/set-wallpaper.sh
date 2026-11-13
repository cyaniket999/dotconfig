#!/usr/bin/env bash

WALLPAPER_DIR="$HOME/Pictures/backgrounds"
DUNST_RELOAD="$HOME/.config/dunst/dunst.sh"

if [ ! -d "$WALLPAPER_DIR" ]; then
    notify-send "Wallpaper Error" "Directory $WALLPAPER_DIR does not exist."
    exit 1
fi

# Build wallpaper filename list
WALLPAPERS=$(find "$WALLPAPER_DIR" -maxdepth 1 -type f \( -iname "*.jpg" -o -iname "*.png" -o -iname "*.jpeg" \) -exec basename {} \;)

[ -z "$WALLPAPERS" ] && exit 0

# Launch dmenu picker (colors are handled automatically via Xresources patch)
SELECTED_WALL=$(echo "$WALLPAPERS" | dmenu -l 3 -p "Wallpaper:")

[ -z "$SELECTED_WALL" ] && exit 0

FULL_PATH="$WALLPAPER_DIR/$SELECTED_WALL"

# 1. Run Pywal and reload Dunst
if [ -x "$DUNST_RELOAD" ]; then
    wal -q -i "$FULL_PATH" -o "$DUNST_RELOAD"
else
    wal -q -i "$FULL_PATH"
fi

# 2. Merge Pywal Xresources
xrdb -merge ~/.Xresources

# 3. Live restart dwm and give it a moment to settle
pkill -HUP -x dwm
sleep 0.3  # Gives dwm time to re-initialize

# 4. Safely restart dwmblocks
pkill -x dwmblocks
sleep 0.1
nohup dwmblocks >/dev/null 2>&1 &
