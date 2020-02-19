#!/bin/sh

# Some files are subject to generation. They are provided in this repo as initial defaults.  
# Any changes will not be reported nor committed by git... 
# Revert with --no-assume-unchanged
git update-index --assume-unchanged ../termite/.config/termite/config 
