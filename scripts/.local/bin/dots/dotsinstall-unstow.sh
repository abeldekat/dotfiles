#!/bin/sh
cd ~/dotfiles
stow -t $HOME -vD `ls --ignore='[A-Z]*'`
