#!/bin/sh
# Set desktop environment hint for portals
export XDG_CURRENT_DESKTOP=Unity
export XDG_SESSION_TYPE=x11

# Update D-Bus environment so portals can read it
if command -v dbus-update-activation-environment >/dev/null 2>&1; then
    dbus-update-activation-environment --systemd DISPLAY XDG_CURRENT_DESKTOP XDG_SESSION_TYPE
fi

# Background Services
killall lxqt-policykit-agent polkit-gnome-authentication-agent-1 2>/dev/null
if [ -x /usr/lib/lxqt-policykit/lxqt-policykit-agent ]; then
    /usr/lib/lxqt-policykit/lxqt-policykit-agent &
elif [ -x /usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 ]; then
    /usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
fi

[ -f ~/.fehbg ] && ~/.fehbg &
killall picom 2>/dev/null; picom &

# Status Bar
killall dwmblocks 2>/dev/null; dwmblocks &

# --- Smart DWM Restart Loop ---
rm -f /tmp/dwm-exit

while true; do
    # If the exit flag exists, break the loop and exit X completely
    [ -f /tmp/dwm-exit ] && rm -f /tmp/dwm-exit && break

    dwm
    sleep 0.1
done
