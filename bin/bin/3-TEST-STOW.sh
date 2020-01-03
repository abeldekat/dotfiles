#!/bin/sh
cd ~/dotfiles
stow -vnS `ls --ignore='[A-Z]*'`
