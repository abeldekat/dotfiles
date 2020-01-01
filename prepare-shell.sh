#!/bin/sh

DOTFILES=~/dotfiles

rm -rf ~/.config/omyzsh
rm -rf ~/.config/zsh
rm -f ~/.zshrc

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
mkdir ~/.config/omyzsh
ZSH=~/.config/omyzsh sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" 

# Install themes etc
mkdir ~/.config/zsh
ZSH_CUSTOM="$HOME/.config/zsh"
git clone https://github.com/bhilburn/powerlevel9k.git $ZSH_CUSTOM/themes/powerlevel9k
git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
#git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-completions

ln -s -f $DOTFILES/zshrc ~/.zshrc
ln -s -f $DOTFILES/zsh ~/.config/zsh
