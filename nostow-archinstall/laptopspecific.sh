#!/bin/sh
# Laptop only lspci | grep -e VGA -e 3D
pacman -S xf86-video-intel xf86-input-libinput
scriptdir=`dirname $0`
sudo cp $scriptdir/30-touchpad-laptop.conf /etc/X11/xorg.conf.d/
