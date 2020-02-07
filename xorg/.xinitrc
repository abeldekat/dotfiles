#!/bin/sh
userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps
if [ -f $sysresources ]; then
    xrdb -merge $sysresources
fi
if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi
if [ -f "$userresources" ]; then
    xrdb -I$HOME -merge "$userresources"
fi
if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

# Load capslock as control and escape
[ -f ~/.xprofile ] && . ~/.xprofile

# LARBS WM is determined in your `~/.profile` on login.

# Map arguments to commands.
case "$LARBSWM" in
    bspwm ) exec bspwm        ;;
    xfce  ) exec startxfce4   ;;
    *) echo "No valid LARBS window manager detected." ;;
esac
