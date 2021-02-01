# Note:
# In the terminal, investigate keys and widgets:
# bindkey '^T' shows the widget for which the key is bound
# from normal mode, press ':' and execute where-is
# zle -la shows all available widgets
 
# vi mode explicitly
bindkey -v
export KEYTIMEOUT=5

# This is done by FZF...Enable searching through history
# Shows a bck-i-search, also tested with prompt:
# bindkey '^R' history-incremental-pattern-search-backward

# No such widget `edit-command-line': Make it available
autoload edit-command-line; zle -N edit-command-line

# Edit line in vim buffer
# This defaults to viins
# bindkey '^x^e' edit-command-line
bindkey '^e' edit-command-line
# man zshall: example overwrites v in normal mode 
# bindkey -M vicmd v edit-command-line

# Use vim keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
# Fix backspace bug when switching modes
# pressing a: can't backspace past the point where I entered insert mode.
bindkey "^?" backward-delete-char

# Change cursor shape for different vi modes.
# This is special widget executed  every  time the keymap changes
function zle-keymap-select {
  if [[ ${KEYMAP} == vicmd ]] ||
     [[ $1 = 'block' ]]; then
    echo -ne '\e[1 q'
  elif [[ ${KEYMAP} == main ]] ||
       [[ ${KEYMAP} == viins ]] ||
       [[ ${KEYMAP} = '' ]] ||
       [[ $1 = 'beam' ]]; then
    echo -ne '\e[5 q'
  fi
}
zle -N zle-keymap-select
echo -ne '\e[5 q' # Use beam shape cursor on startup.
preexec() { echo -ne '\e[5 q' ;} # Use beam shape cursor for each new prompt.

# More vim commands:
# ci", ci', ci`, di", etc
autoload -U select-quoted
zle -N select-quoted
for m in visual viopp; do
  for c in {a,i}{\',\",\`}; do
    bindkey -M $m $c select-quoted
  done
done
# ci{, ci(, ci<, di{, etc
autoload -U select-bracketed
zle -N select-bracketed
for m in visual viopp; do
  for c in {a,i}${(s..)^:-'()[]{}<>bB'}; do
    bindkey -M $m $c select-bracketed
  done
done
