tmux-man-for-current-word() {
  # cmd=$(echo "$BUFFER" | rev | sed -E 's/^ +//' | cut -d ' ' -f 1 | rev)
  # width=$(tmux display -p '#{pane_width}')
  # height=$(tmux display -p '#{pane_height}')
  # normalized_height=$( echo "$height * 2.2" | bc )

  # if (( normalized_height > width )); then
  #   tmux split-window -v "man $cmd"
  # else
  #   tmux split-window -h "man $cmd"
  # fi
  tmux split-window -h
}

# TODO Does not work yet
# OMZ man plugin only works if put before vi-mode
# That uses '\e'man as bindkey
zle -N tmux-man-for-current-word
bindkey '^Q' tmux-man-for-current-word
# bindkey "\e"man tmux-man-for-current-word
