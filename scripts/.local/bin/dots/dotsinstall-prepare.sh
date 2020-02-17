#!/bin/sh

# Script for easy stow on a clean arch system

DOTFILES="$HOME/dotfiles"
MY_DEFAULTS="$DOTFILES/Archinstall-nostow/defaults"
MY_COLORS="$HOME/.local/share/my_colors"
MY_TERMITE="$HOME/.config/termite"

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
stow -t $HOME -d $DOTFILES -vnS `ls $DOTFILES --ignore='[A-Z]*'`
