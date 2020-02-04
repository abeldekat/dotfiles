emulate sh -c '. ~/.profile'

# Arch wiki: Zprofile, typically used to autostart graphical sessions:
if systemctl -q is-active graphical.target && [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
  # remove exec to remain loggedin
  exec startx
fi
