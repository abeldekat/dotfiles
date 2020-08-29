# Load aliases and shortcuts if existent.
[ -f "$HOME/.config/shortcutrc" ] && source "$HOME/.config/shortcutrc"
[ -f "$HOME/.config/aliasrc" ] && source "$HOME/.config/aliasrc"

_not_inside_tmux() {
  [[ -z "$TMUX" ]]
}

ensure_tmux_is_running() {
  if _not_inside_tmux; then
    tat
  fi
}

# todo v mode 
# \c-o, accept-line-and-down-history, bound in emacs mode by default

ensure_tmux_is_running

export KEYTIMEOUT=1
if [ ! x"$ZSH_FRAMEWORK_WRAPPER" = x ] ; then
  source $ZSH_FRAMEWORK_WRAPPER
fi
