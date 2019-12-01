#!/bin/sh
DOTFILES=~/dotfiles
MINPACPATH=$DOTFILES/vim/pack/minpac/opt

mkdir -p ~/.config/nvim
mkdir -p ~/tmp

echo "Apply ln"
ln -s -f $DOTFILES/vim ~/.vim
ln -s -f $DOTFILES/init.vim ~/.config/nvim/init.vim

echo "Apply ln git: Reminder for  .gitconfig.local"
ln -s -f $DOTFILES/global-gitignore ~/.gitignore
ln -s -f $DOTFILES/gitconfig ~/.gitconfig

echo "Get minpac"
git clone https://github.com/k-takata/minpac.git $MINPACPATH

echo "Done"
