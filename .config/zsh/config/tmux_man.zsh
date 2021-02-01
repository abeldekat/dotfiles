# Big advantage: Pressing q in man closes the tmux pane as well
tmux-man-for-current-word() {
  cmd=$(echo "$BUFFER" | rev | sed -E 's/^ +//' | cut -d ' ' -f 1 | rev)
  width=$(tmux display -p '#{pane_width}')
  height=$(tmux display -p '#{pane_height}')
  normalized_height=$( echo "$height * 2.2" | bc )

  if (( normalized_height > width )); then
    tmux split-window -v "man $cmd"
  else
    tmux split-window -h "man $cmd"
  fi
}

# do not map to ctrl-s or ctrl-q. Does not work, flow control I guess
zle -N tmux-man-for-current-word
# ^T will be overwritten by fzf when loaded
# ^N is self insert
bindkey '^N' tmux-man-for-current-word
# OMZ man plugin only works if put before vi-mode
# bindkey "\e"man tmux-man-for-current-word
