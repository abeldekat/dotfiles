#!/bin/sh

efibootmgr --disk /dev/sda --part 1 --create --label "Arch Linux" --loader /vmlinuz-linux --unicode 'root=PARTUUID=ec368a7a-b791-bc46-9f45-f8026774caf7 rw initrd=\amd-ucode.img initrd=\initramfs-linux.img' --verbose
