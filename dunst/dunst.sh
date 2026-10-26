#!/usr/bin/env bash

PYWAL_DUNST="$HOME/.cache/wal/dunstrc"
DUNST_CONFIG="$HOME/.config/dunst/dunstrc"

# If Pywal has generated a dunstrc, update the live config
if [ -f "$PYWAL_DUNST" ]; then
    cp "$PYWAL_DUNST" "$DUNST_CONFIG"
fi

# Restart Dunst
killall dunst 2>/dev/null
dunst &