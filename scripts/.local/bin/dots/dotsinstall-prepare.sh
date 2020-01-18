#!/bin/sh

DOTFILES=$HOME/dotfiles

# If stow discovers an existing .vim directory symlinking will be diffent
# .vim should be a link to .vim in the dotfiles...
PACKPATH=$DOTFILES/vim/.vim/pack
if [ ! -d $PACKPATH ] ; then
	echo "Adding minpack to the dotfiles folder"
        git clone https://github.com/k-takata/minpac.git $PACKPATH/minpac/opt/minpac
fi
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
stow -vnS `ls --ignore='[A-Z]*'`
cd -
