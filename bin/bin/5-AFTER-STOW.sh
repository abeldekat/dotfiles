#!/bin/sh
DOTFILES=~/dotfiles
PACKPATH=$DOTFILES/vim/.vim/pack
MINPACPATH=$PACKPATH/minpac/opt
rm -rf $PACKPATH
echo "Get minpac"
git clone https://github.com/k-takata/minpac.git $MINPACPATH/minpac
echo "Done"
