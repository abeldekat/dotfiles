#!/bin/sh

# Some files are subject to generation. They are provided in this repo as initial defaults.  
# Any changes will not be reported nor committed by git... 
# Revert with --no-assume-unchanged
# List with git ls-files -v | grep '^[[:lower:]]'

git update-index --assume-unchanged ../termite/.config/termite/config 

git update-index --assume-unchanged $(git ls-files ../base-colors-always-stow | tr '\n' ' ')
