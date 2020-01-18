#!/bin/sh
pacman -S broadcom-wl-dkms
mkinitcpio -P
