#!/bin/sh
if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi
# Load capslock as control and escape
[ -f ~/.xprofile ] && . ~/.xprofile

#####################
# Session selection #
#####################

# Launch X by running:
# 	xinit
#   xinit xfce
#
# Or pass this file and the DE/WM arg to startx:
#   startx ~/.xinitrc bspwm
# BSPWM is the default.
session=${1:-bspwm}

# Map arguments to commands.
case $session in
    bspwm ) exec bspwm        ;;
    xfce  ) exec startxfce4   ;;
    *) echo "Unknown session" ;;
esac
