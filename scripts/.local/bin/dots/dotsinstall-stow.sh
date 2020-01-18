#!/bin/sh
cd ~/dotfiles
# Ignore packages starting with uppercase
stow -vS `ls --ignore='[A-Z]*'`
cd -
