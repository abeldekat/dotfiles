#!/bin/sh
pacman -S man-db man-pages texinfo intel-ucode
mkinitcpio -P
