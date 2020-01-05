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

# If stow discovers an existing .vim directory symlinking will be diffent
# .vim should be a link to .vim in the dotfiles...
PACKPATH=$DOTFILES/vim/.vim/pack
if [ ! -f $PACKPATH ] ; then
	echo "Adding minpack to the dotfiles folder"
        git clone https://github.com/k-takata/minpac.git $PACKPATH/opt/
fi
if [ -f ~/.vim ] ; then
  echo "Renaming existing .vim dir..."
  mv ~/.vim ~/.vim-REMOVEME
fi
if [ -f ~/.vimrc ] ; then
  echo "Renaming existing .vimrc ..."
  mv ~/.vimrc ~/.vimrc-REMOVEME
fi

# Install oh-my-zsh
export ZSH=~/.config/oh-my-zsh
OMY_CUSTOM="$ZSH/custom"
if [ ! -d $ZSH ] ; then
  echo "Installing oh-my-zsh unattended..."
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" "" --unattended 
  echo "Installing extra themes..."
  git clone https://github.com/bhilburn/powerlevel9k.git $OMY_CUSTOM/themes/
  git clone https://github.com/romkatv/powerlevel10k.git $OMY_CUSTOM/themes/
  echo "Installing extra plugins..."
  git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $OMY_CUSTOM/plugins/
  git clone https://github.com/zsh-users/zsh-autosuggestions $OMY_CUSTOM/plugins/
  #git clone https://github.com/zsh-users/zsh-completions $OMY_CUSTOM/plugins/
fi

# Test for existing zshrc
if [ -f ~/.zsh ] ; then
	echo "Renaming existing .zshrc"
	mv ~/.zshrc ~/zshrc-REMOVEME
fi

# Test stow
cd $DOTFILES
stow -vnS `ls --ignore='[A-Z]*'`
cd -
