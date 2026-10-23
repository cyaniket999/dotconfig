#!/bin/sh
export PATH="$HOME/.local/bin:$PATH"
#Session Switcher
case "$WM" in
    openbox)
        exec openbox-session
        ;;
    bspwm)
        sxhkd &
        exec bspwm
        ;;
    xfce)
        exec startxfce4
        ;;
    *)
        # Default session: runs your complete dwm setup script
        exec ~/.config/suckless/startdwm.sh
        ;;
esac
