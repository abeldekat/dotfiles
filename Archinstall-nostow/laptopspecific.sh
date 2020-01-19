#!/bin/sh
# Laptop only lspci | grep -e VGA -e 3D
pacman -S xorg-server xorg-apps xorg-init xf86-video-intel xf86-input-libinput xdo
