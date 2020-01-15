#!/bin/sh
pacman -S intel-ucode
mkinitcpio -P
