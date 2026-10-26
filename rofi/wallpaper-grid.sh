#!/usr/bin/env bash

WALLPAPER_DIR="$HOME/Pictures/backgrounds"
DUNST_RELOAD="$HOME/.config/dunst/dunst.sh"

# Check if Pywal config/cache exists and set theme accordingly
if [ -f "$HOME/.cache/wal/colors-rofi-dark.rasi" ]; then
    ROFI_THEME="$HOME/.config/rofi/wallpaper-grid/wallpaper-grid-pywal.rasi"
else
    ROFI_THEME="$HOME/.config/rofi/wallpaper-grid/wallpaper-grid.rasi"
fi

if [ ! -d "$WALLPAPER_DIR" ]; then
    notify-send "Wallpaper Error" "Directory $WALLPAPER_DIR does not exist."
    exit 1
fi

# Build list of wallpapers with image icon metadata for Rofi
ROFI_INPUT=""
while IFS= read -r file; do
    filename=$(basename "$file")
    ROFI_INPUT+="${filename}\0icon\x1f${file}\n"
done < <(find "$WALLPAPER_DIR" -maxdepth 1 -type f \( -iname "*.jpg" -o -iname "*.png" -o -iname "*.jpeg" \))

# Launch Rofi grid picker
SELECTED_WALL=$(echo -en "$ROFI_INPUT" | rofi -dmenu -i -p "Wallpaper" -theme "$ROFI_THEME")

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

# 3. Live restart dwm
pkill -HUP -x dwm

# 4. Restart dwmblocks
if pgrep -x dwmblocks >/dev/null; then
    pkill -x dwmblocks
    sleep 0.1
    nohup dwmblocks >/dev/null 2>&1 &
fi