typeset -U PATH path
# Path
_bin="$HOME/.local/bin"
_sxhkd="$HOME/.config/sxhkd/scripts"
_bspwm="$HOME/.config/bspwm/scripts"
_work="$HOME/builds/bsp-dwm/src"
path=("$_bin" "$_bspwm" "$_sxhkd" "$_work" "$_bin/polybar"   "$_bin/colors" "$_bin/larbs"  "$_bin/utils" "$_bin/arch" "$path[@]")
export PATH

# Other XDG paths
export XDG_DATA_HOME=${XDG_DATA_HOME:="$HOME/.local/share"}
export XDG_CACHE_HOME=${XDG_CACHE_HOME:="$HOME/.cache"}
export XDG_CONFIG_HOME=${XDG_CONFIG_HOME:="$HOME/.config"}

# TODO Disable files
# export LESSHISTFILE=-

# Fixing Paths
# export RIPGREP_CONFIG_PATH="$XDG_CONFIG_HOME/ripgrep/ripgreprc"

# Default Apps
export EDITOR="nvim"
export READER="zathura"
export VISUAL="nvim"
export TERMINAL="st"
export BROWSER="firefox"
export VIDEO="mpv"
export IMAGE="sxiv"
export COLORTERM="truecolor"
export OPENER="xdg-open"
export PAGER="less"
export WM="bspwm"

# SXHKD config location. Used to enable tempfs for speed and modes
# export SXHKD_ACTIVE_CONFIG="$HOME/.config/sxhkd"
export SXHKD_ACTIVE_CONFIG="/dev/shm/sxhkd"

# TODO LF
# export LF_ICONS=""

# Pragmatic VIM book
# export VIMCONFIG=~/.config/nvim
# export VIMDATA=~/.local/share/nvim

# TODO
# export LESS=-R

export LESS_TERMCAP_mb=$(tput bold; tput setaf 2) # green
# Start bold
export LESS_TERMCAP_md=$(tput bold; tput setaf 2) # green
# Start stand out
export LESS_TERMCAP_so=$(tput bold; tput setaf 0; tput setab 3) # yellow
# End standout
export LESS_TERMCAP_se=$(tput rmso; tput sgr0)
# Start underline
export LESS_TERMCAP_us=$(tput smul; tput bold; tput setaf 1) # red
# End Underline
export LESS_TERMCAP_ue=$(tput sgr0)
# End bold, blinking, standout, underline
export LESS_TERMCAP_me=$(tput sgr0)
