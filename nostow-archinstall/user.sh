#!/bin/sh
echo "xdg"
pacman -S xdg-user-dirs
echo "add chris"
useradd -m -G wheel chris
echo "pass chris"
passwd chris
