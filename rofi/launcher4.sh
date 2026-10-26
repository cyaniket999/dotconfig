#!/usr/bin/env bash

# Path to Pywal's color file
PYWAL_CACHE="$HOME/.cache/wal/colors-rofi-dark.rasi"

# Path to your Rofi configs folder
ROFI_DIR="$HOME/.config/rofi/launcher4"

# Check if Pywal color file exists and is non-empty
if [ -s "$PYWAL_CACHE" ]; then
    rofi -show drun -config "$ROFI_DIR/launcher4-pywal.rasi"
else
    rofi -show drun -config "$ROFI_DIR/launcher4.rasi"
fi