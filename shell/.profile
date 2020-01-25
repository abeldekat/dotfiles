# Profile file. Runs on login. Environmental variables are set here.

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    export PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    export PATH="$PATH:$(du -L "$HOME/.local/bin/" | cut -f2 | tr '\n' ':' | sed 's/:*$//')"
fi

# Get default LARBS WM from ~/.local/share/larbs/wm
export LARBSWM="$(cat ~/.local/share/larbs/wm 2>/dev/null)" &&
	[ "$LARBSWM" = "xfce" ] || export LARBSWM="bspwm"
# Advised
export XDG_CONFIG_HOME="${XDG_CONFIG_HOME:-$HOME/.config}"

# ZSH zdotdir is defined in .zshenv
export ZSH_FRAMEWORK_WRAPPER="$ZDOTDIR/zsh_framework.zsh"
#export ZSH_FRAMEWORK_WRAPPER=""

# Panel
PANEL_FIFO=/tmp/panel-fifo
PANEL_HEIGHT=24
#PANEL_FONT="-*-fixed-*-*-*-*-10-*-*-*-*-*-*-*"
#PANEL_FONT="-*-inconsolata-medium-*-*-*-0-0-*-*-m-*-iso8859-*"
#PANEL_FONT="-*-linux biolinum-medium-*-*-*-*-0-*-*-*-*-iso8859-*"
PANEL_FONT="-*-linux libertine-medium-r-*-*-*-*-*-*-*-*-iso8859-*"
PANEL_WM_NAME=bspwm_panel
export PANEL_FIFO PANEL_HEIGHT PANEL_FONT PANEL_WM_NAME

# Default programs:
export EDITOR="vim"
export TERMINAL="termite"
export BROWSER="firefox"
export READER="zathura"
export FILE="ranger"
#export STATUSBAR="${LARBSWM}blocks"

# ~/ Clean-up:
#export NOTMUCH_CONFIG="$HOME/.config/notmuch-config"
#export GTK2_RC_FILES="$HOME/.config/gtk-2.0/gtkrc-2.0"
#export LESSHISTFILE="-"
#export INPUTRC="$HOME/.config/inputrc"
#export PASSWORD_STORE_DIR="$HOME/.local/share/password-store"


# Larbs Other program settings:
#export DICS="/usr/share/stardict/dic/"
#export SUDO_ASKPASS="$HOME/.local/bin/dmenupass"
#export FZF_DEFAULT_OPTS="--layout=reverse --height 40%"
#export LESS=-R
#export LESS_TERMCAP_mb="$(printf '%b' '[1;31m')"
#export LESS_TERMCAP_md="$(printf '%b' '[1;36m')"
#export LESS_TERMCAP_me="$(printf '%b' '[0m')"
#export LESS_TERMCAP_so="$(printf '%b' '[01;44;33m')"
#export LESS_TERMCAP_se="$(printf '%b' '[0m')"
#export LESS_TERMCAP_us="$(printf '%b' '[1;32m')"
#export LESS_TERMCAP_ue="$(printf '%b' '[0m')"

#mpd >/dev/null 2>&1 &

# Switch escape and caps if tty and no passwd required:
sudo -n loadkeys ~/.local/share/larbs/ttymaps.kmap 2>/dev/null

[ ! -f ~/.config/shortcutrc ] && shortcuts >/dev/null 2>&1
