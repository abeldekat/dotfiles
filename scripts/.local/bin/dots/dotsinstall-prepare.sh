#!/bin/sh

# Script for easy stow on a clean arch system

DOTFILES="$HOME/dotfiles"
MY_DEFAULTS="$DOTFILES/Archinstall-nostow/defaults"
MY_COLORS="$HOME/.local/share/my_colors"
MY_TERMITE="$HOME/.config/termite"

# Add minpac
PACKPATH="$DOTFILES/vim/.vim/pack"
if [ ! -d $PACKPATH ] ; then
	echo "Adding minpack to the dotfiles folder"
        git clone https://github.com/k-takata/minpac.git "$PACKPATH/minpac/opt/minpac"
fi

# .vim must be a link to .vim in the dotfiles...
if [ ! -L "$HOME/.vim" ] && [ -d "$HOME/.vim" ] ; then
  echo "Renaming existing .vim dir..."
  mv "$HOME/.vim" "$HOME/.vim-MARKEDBYABEL"
fi
if [ -f "$home/.vimrc" ] ; then
  echo "Renaming existing .vimrc ..."
  mv "$HOME/.vimrc" "$HOME/.vimrc-MARKEDBYABEL"
fi

if [ ! -d "$MY_COLORS" ] ; then
  echo "Adding $MY_COLORS ..."
  mkdir -p "$MY_COLORS"
fi
echo " adding defaults to $MY_COLORS ..."
cp -r "$MY_DEFAULTS/colors/"* "$MY_COLORS"

if [ ! -d "$MY_TERMITE" ] ; then
  echo "Adding $MY_TERMITE ..."
  mkdir -p "$MY_TERMITE"
fi
echo " adding default to $MY_TERMITE ..."
cp -r "$MY_DEFAULTS/termite/"* "$MY_TERMITE"

# Test stow
echo "Simulating stow with all lowercase packages..."
cd $DOTFILES
stow -t $HOME -vnS `ls --ignore='[A-Z]*'`
cd -
