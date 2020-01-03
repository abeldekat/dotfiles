#!/bin/sh

DOTFILES=~/dotfiles

# Nice to have
# ranger lf exuberant-ctags shellcheck fzf

# Necessary 
# fonts-powerline 
# TODO sudo apt install powerline 
# sudo apt install fonts-powerline
# https://github.com/powerline/fonts
# https://github.com/Powerlevel9k/powerlevel9k/wiki/About-Fonts
# https://github.com/Powerlevel9k/powerlevel9k/wiki/Install-Instructions#step-2-install-a-powerline-font
# TODO /mnt/storage/data/chris/Software/github, nerd-fonts
# https://mathew-kurian.github.io/CharacterMap/

#Install omyzsh 
rm -rf ~/.config/oh-my-zsh
ZSH=~/.config/oh-my-zsh sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" 
