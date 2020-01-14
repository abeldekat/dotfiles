#!/bin/sh
cd 
mkdir ~/.config/aur
cd ~/.config/aur
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
