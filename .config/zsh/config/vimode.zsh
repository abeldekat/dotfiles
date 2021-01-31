# vi mode
bindkey -v
export KEYTIMEOUT=1

# TODO This is done by FZF...Enable searching through history
# Shows a bck-i-search, also tested with prompt:
# bindkey '^R' history-incremental-pattern-search-backward

# Edit line in vim buffer
autoload edit-command-line; zle -N edit-command-line

# This defaults to viins
bindkey '^x^e' edit-command-line
# man zshall example overwrites v in normal mode 
# bindkey -M vicmd v edit-command-line

# Fix backspace bug when switching modes
# bindkey "^?" backward-delete-char
