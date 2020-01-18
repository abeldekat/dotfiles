#!/bin/sh
echo "linking"
ln -sf /usr/share/zoneinfo/Europe/Amsterdam /etc/localtime
echo $(ls -l /etc/localtime)
echo "hwclock"
hwclock --systohc

echo "Add en_US"
echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen

echo "Run localegen"
locale-gen

echo "Set LANG"
echo 'LANG=en_US.UTF-8' > /etc/locale.conf
cat /etc/locale.conf
