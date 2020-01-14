#!/bin/sh
echo "Install git wget and curl"
pacman -S git wget curl
git config --global user.email "abel@nomail.com"
git config --global user.name "abel"
