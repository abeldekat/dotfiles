#!/bin/sh

DOTFILES=$HOME/dotfiles

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
if [ ! -d $PACKPATH ] ; then
	echo "Adding minpack to the dotfiles folder"
        git clone https://github.com/k-takata/minpac.git $PACKPATH/minpac/opt/minpac
fi
if [ ! -L $HOME/.vim ] && [ -d $HOME/.vim ] ; then
  echo "Renaming existing .vim dir..."
  mv $HOME/.vim $HOME/.vim-REMOVEME
fi
if [ -f $HOME/.vimrc ] ; then
  echo "Renaming existing .vimrc ..."
  mv $HOME/.vimrc $HOME/.vimrc-REMOVEME
fi

# Install oh-my-zsh
export ZSH=$HOME/.config/oh-my-zsh
OMY_CUSTOM="$ZSH/custom"
if [ ! -d $ZSH ] ; then
  echo "Installing oh-my-zsh unattended..."
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" "" --unattended 
  echo "Installing extra themes..."
  git clone https://github.com/bhilburn/powerlevel9k.git $OMY_CUSTOM/themes/powerlevel9k
  git clone https://github.com/romkatv/powerlevel10k.git $OMY_CUSTOM/themes/powerlevel10k
  echo "Installing extra plugins..."
  git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $OMY_CUSTOM/plugins/zsh-syntax-highlighting
  git clone https://github.com/zsh-users/zsh-autosuggestions $OMY_CUSTOM/plugins/zsh-autosuggestions
  #git clone https://github.com/zsh-users/zsh-completions $OMY_CUSTOM/plugins/zsh-completions
fi

# Test for existing zshrc
if [ -f $HOME/.zshrc ] ; then
	echo "Renaming existing .zshrc"
	mv $HOME/.zshrc $HOME/.zshrc-REMOVEME
fi

# Test for existing bin
if [ ! -L $HOME/bin ] && [ -d $HOME/bin ] ; then
	echo "Renaming existing bin..."
	mv $HOME/bin $HOME/bin-REMOVEME
fi

# Test for existing .xinitrc
if [ -f $HOME/.xinitrc ] ; then
	echo "Renaming existing .xinitrc..."
	mv $HOME/.xinitrc $HOME/.xinitrc-REMOVEME
fi

# Test stow
echo "Simulating stow with all lowercase packages..."
cd $DOTFILES
stow -vnS `ls --ignore='[A-Z]*'`
cd -
