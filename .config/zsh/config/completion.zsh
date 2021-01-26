# TODO christoomey, own completion scripts
# fpath=(~/.zsh/completion $fpath)

# completion listing extionsions
zmodload zsh/complist

zstyle ':completion:*' menu select
# case-insensitive (all), partial-word and then substring completion
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

# Include hidden files in autocomplete:
_comp_options+=(globdots)		# Include hidden files.

# TODO from ctoomey zshrc. Could this location be right?
# . $HOME/.asdf/asdf.sh
# . $HOME/.asdf/completions/asdf.bash
# . /usr/local/etc/bash_completion.d
