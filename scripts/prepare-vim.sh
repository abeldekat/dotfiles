#!/bin/sh
DOTFILES=~/dotfiles
PACKPATH=$DOTFILES/vim/pack
MINPACPATH=$PACKPATH/minpac/opt

mkdir -p ~/.config/nvim
mkdir -p ~/tmp

echo "Removing "
rm -rf ~/.vim
rm -r ~/.config/nvim/init.vim
rm -r ~/.gitignore
rm -r ~/.gitconfig
rm -rf $PACKPATH 

echo "Apply ln"
ln -s -f -v $DOTFILES/vim ~/.vim
ln -s -f $DOTFILES/init.vim ~/.config/nvim/init.vim

echo "Apply ln git: Reminder for  .gitconfig.local"
ln -s -f $DOTFILES/global-gitignore ~/.gitignore
ln -s -f $DOTFILES/gitconfig ~/.gitconfig

echo "Get minpac"
git clone https://github.com/k-takata/minpac.git $MINPACPATH/minpac

echo "Done"
