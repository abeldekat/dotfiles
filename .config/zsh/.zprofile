# Arch wiki use gnome-keyring, see also /etc/pam.d/login
export eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)

# Switch escape and caps if tty and no passwd required:
sudo -n loadkeys ~/.local/share/larbs/ttymaps.kmap 2>/dev/null

[ ! -f ~/.config/shortcutrc ] && shortcuts >/dev/null 2>&1

# Arch wiki: Zprofile, typically used to autostart graphical sessions:
if systemctl -q is-active graphical.target && [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
  # remove exec to remain loggedin
  startx
fi

# eval "$(gh completion -s zsh)"
