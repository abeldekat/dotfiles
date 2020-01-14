#!/bin/sh
echo "git config"
cd
git config --global user.email "abel@nomail.com"
git config --global user.name "abel"
# Keep credentials 30 minutes
git config --global credential.helper 'cache --timeout 1800'
