#!/bin/sh
set DOTFILES=~/dotfiles
#set MINPACPATHTMP=~/.vim/pack/minpac/opt

mkdir -p ~/.config/nvim
mkdir -p ~/tmp

echo "Apply ln"
ln -s $DOTFILES/vimrc ~/.vimrc
ln -s $DOTFILES/vim ~/.vim
ln -s $DOTFILES/init.vim ~/.config/nvim/init.vim

echo "Apply ln git: Reminder for  .gitconfig.local"
ln -s $DOTFILES/global-gitignore ~/.gitignore
ln -s $DOTFILES/gitconfig ~/.gitconfig

#echo "Installing minpac to $MINPACPATHTMP"
#mkdir -p $MINPACPATHTMP
#cd $MINPACPATHTMP
#git clone https://github.com/k-takata/minpac.git . 
