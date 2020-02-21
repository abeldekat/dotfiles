#!/bin/sh
# Master boot record specific instructions
pacman -S grub os-prober
grub-install --target=i386-pc /dev/sdc
grub-mkconfig -o /boot/grub/grub.cfg
