#!/bin/sh

# Script for easy stow on a clean arch system

DOTFILES=$HOME/dotfiles

# Add minpac
PACKPATH=$DOTFILES/vim/.vim/pack
if [ ! -d $PACKPATH ] ; then
	echo "Adding minpack to the dotfiles folder"
        git clone https://github.com/k-takata/minpac.git $PACKPATH/minpac/opt/minpac
fi

# .vim must be a link to .vim in the dotfiles...
if [ ! -L $HOME/.vim ] && [ -d $HOME/.vim ] ; then
  echo "Renaming existing .vim dir..."
  mv $HOME/.vim $HOME/.vim-MARKEDBYABEL
fi
if [ -f $HOME/.vimrc ] ; then
  echo "Renaming existing .vimrc ..."
  mv $HOME/.vimrc $HOME/.vimrc-MARKEDBYABEL
fi

# Test stow
echo "Simulating stow with all lowercase packages..."
cd $DOTFILES
stow -t $HOME -vnS `ls --ignore='[A-Z]*'`
cd -
