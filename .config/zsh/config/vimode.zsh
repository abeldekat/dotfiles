# Note:
# In the terminal, investigate keys and widgets:
# bindkey '^T' shows the widget for which the key is bound
# from normal mode, press ':' and execute where-is
# zle -la shows all available widgets
 
# vi mode explicitly
bindkey -v
export KEYTIMEOUT=1

# TODO This is done by FZF...Enable searching through history
# Shows a bck-i-search, also tested with prompt:
# bindkey '^R' history-incremental-pattern-search-backward

# No such widget `edit-command-line': Make it available
autoload edit-command-line; zle -N edit-command-line

# Edit line in vim buffer
# This defaults to viins
bindkey '^x^e' edit-command-line
# man zshall example overwrites v in normal mode 
# bindkey -M vicmd v edit-command-line

# Fix backspace bug when switching modes
# bindkey "^?" backward-delete-char

# Use vim keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
