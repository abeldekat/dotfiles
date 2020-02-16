#!/bin/bash
echo "Start"
echo "Backup fstab"
cp /etc/fstab /etc/fstab.bak

# /mnt/storage, data, /dev/sda1
storage='UUID=f231f6c3-23f0-4e8c-9a93-e0446325dcbb 	/mnt/storage         	ext4      	defaults	0 0'

# /mnt/container, /dev/sdb1
container='UUID=7219d400-8bca-4d11-8d73-4bfc68c1d8ec	/mnt/container         	ext4      	defaults	0 0'

if [ ! -d /mnt/storage ] ; then
	echo "Storage, make directory and write to fstab "
	mkdir /mnt/storage
	echo "# storage /dev/sda1 " >> /etc/fstab
	echo "$storage" >> /etc/fstab
fi
if [ ! -d /mnt/container ] ; then
	echo "Container, make directory and write to fstab "
	mkdir /mnt/container
	echo "# container /dev/sdb1 " >> /etc/fstab
	echo "$container" >> /etc/fstab
fi
