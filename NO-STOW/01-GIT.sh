#!/bin/sh
echo "git config in root"
cd /root
git config --global user.email "abel@nomail.com"
git config --global user.name "abel"
# Keep credentials 30 minutes
git config --global credential.helper 'cache --timeout 1800'
cd -
