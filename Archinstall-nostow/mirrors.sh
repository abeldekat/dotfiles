#!/bin/sh
echo "Modifying mirrorlist to the Netherlands"
cd /etc/pacman.d
cp mirrorlist orgmirrorlist
grep -A 1 "Netherlands" orgmirrolist | sed /--/d > mirrorlist
