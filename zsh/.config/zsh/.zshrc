# Load aliases and shortcuts if existent.
[ -f "$HOME/.config/shortcutrc" ] && source "$HOME/.config/shortcutrc"
[ -f "$HOME/.config/aliasrc" ] && source "$HOME/.config/aliasrc"

# todo v mode 
# \c-o, accept-line-and-down-history, bound in emacs mode by default

export KEYTIMEOUT=1
if [ ! x"$ZSH_FRAMEWORK_WRAPPER" = x ] ; then
  source $ZSH_FRAMEWORK_WRAPPER
fi
