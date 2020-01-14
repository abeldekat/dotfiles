#!/bin/sh
echo "linking"
ln -sf /usr/share/zoneinfo/Europe/Amsterdam /etc/localtime
echo $(ls -l /etc/localtime)
echo "hwclock"
hwclock --systohc
