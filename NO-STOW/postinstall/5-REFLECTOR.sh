#!/bin/sh
echo "reflector"
pacman -Syu
pacman -S reflector
reflector --latest 200 --country Netherlands --country Germany --country Belgium --protocol https --sort rate --save /etc/pacman.d/mirrorlist
pacman -Syu
