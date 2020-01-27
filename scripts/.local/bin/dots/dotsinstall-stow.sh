#!/bin/sh
cd ~/dotfiles
# Ignore packages starting with uppercase
stow -t $HOME -vS `ls --ignore='[A-Z]*'`
cd -
