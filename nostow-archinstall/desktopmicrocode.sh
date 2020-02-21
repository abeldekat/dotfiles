#!/bin/sh
pacman -S amd-ucode
mkinitcpio -P
