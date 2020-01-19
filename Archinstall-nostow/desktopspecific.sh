#!/bin/sh
# xorg installs mesa, driver for 3d acceleration
# mesa-vdpau, video acceleration
# xf86-video-ati ddx driver 2d acc in xorg
# desktop card: Radeon HD 5750
pacman -S xorg-server xorg-apps xorg-init mesa-vdpau xf86-video-ati xdo
