#!/bin/sh
set DOTFILES=~/dotfiles

mkdir -p ~/.config/nvim
mkdir -p ~/tmp

echo "Apply ln"
ln -s $DOTFILES/vim ~/.vim
ln -s $DOTFILES/init.vim ~/.config/nvim/init.vim

echo "Apply ln git: Reminder for  .gitconfig.local"
ln -s $DOTFILES/global-gitignore ~/.gitignore
ln -s $DOTFILES/gitconfig ~/.gitconfig
