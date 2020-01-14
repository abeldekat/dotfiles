#!/bin/sh
pacman -S intel-ucode broadcom-wl-dkms
mkinitcpio -P
