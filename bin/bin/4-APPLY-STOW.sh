#!/bin/sh
cd ~/dotfiles
stow -vS `ls --ignore='[A-Z]*'`
