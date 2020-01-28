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
# uncomment for zsh without plugins
#export ZSH_FRAMEWORK_WRAPPER=""

# bspwm and lemonbar can source this file obtaining color variables to use 
export COLORS_TO_SOURCE="$HOME/.cache/wal/colors.sh"

# Panel
export PANEL_FIFO=/tmp/panel-fifo
export PANEL_WM_NAME=bspwm_panel

# Default programs:
export EDITOR="vim"
export TERMINAL="termite"
export BROWSER="firefox"
export READER="zathura"
export FILE="ranger"

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

# Switch escape and caps if tty and no passwd required:
sudo -n loadkeys ~/.local/share/larbs/ttymaps.kmap 2>/dev/null

[ ! -f ~/.config/shortcutrc ] && shortcuts >/dev/null 2>&1
