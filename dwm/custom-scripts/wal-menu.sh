#!/bin/sh

# 1. Configuration
WALL_DIR="$HOME/Pictures/wallpapers"

# Ensure wallpaper directory exists
if [ ! -d "$WALL_DIR" ]; then
    notify-send "Wallpaper Switcher" "Directory $WALL_DIR not found." 2>/dev/null
    exit 1
fi

# 2. Pull current Xresources colors for dmenu (Colors only)
NB=$(xrdb -query | grep 'dwm.dmenubg:' | awk '{print $2}')
NF=$(xrdb -query | grep 'dwm.dmenufg:' | awk '{print $2}')
SB=$(xrdb -query | grep 'dwm.dmenuselbg:' | awk '{print $2}')
SF=$(xrdb -query | grep 'dwm.dmenuselfg:' | awk '{print $2}')
FN=$(xrdb -get dwm.dmenufont)
FN="${FN:-JetBrainsMono Nerd Font:size=9.5:style=Regular}"

# Fallback defaults
NB="${NB:-#121214}"
NF="${NF:-#d4d4d8}"
SB="${SB:-#d97706}"
SF="${SF:-#ffffff}"

# 3. Select wallpaper via dmenu (dmenu uses its own font setup)
SELECTED=$(find "$WALL_DIR" -maxdepth 2 -type f \( -iname "*.jpg" -o -iname "*.jpeg" -o -iname "*.png" -o -iname "*.webp" \) -printf "%f\n" | sort | dmenu -i -l 10 -p "Wallpaper:" -fn "$FN" -nb "$NB" -nf "$NF" -sb "$SB" -sf "$SF")

# Exit cleanly if Esc was pressed
[ -z "$SELECTED" ] && exit 0

# Resolve full path
FULL_PATH=$(find "$WALL_DIR" -maxdepth 2 -type f -name "$SELECTED" | head -n 1)

# 4. Generate pywal colors & set wallpaper
wal -i "$FULL_PATH" -n -q
feh --bg-fill "$FULL_PATH"

# 5. Merge custom pywal dwm Xresources template
if [ -f "$HOME/.Xresources" ]; then
    xrdb -merge "$HOME/.Xresources"
fi

# 6. Live restart dwm
pkill -HUP -x dwm
sleep 0.3

# 7. Restart dunst to load new pywal colors from cache
pkill dunst
dunst &

# 8. Refresh dwmblocks
pkill -RTMIN+10 dwmblocks 2>/dev/null &