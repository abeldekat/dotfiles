#!/bin/bash
mkdir -p nofold/foldme
touch nofold/foldme/a.txt
mkdir -p bar/baz
touch bar/baz/b.txt
mkdir -p nostow-iets/iets
touch nostow-iets/iets/c.txt
mkdir -p stow-niets/niets
touch stow-niets/niets/d.txt
mkdir -p no-nostow/gek
touch no-nostow/gek/e.txt
mkdir -p "heel raar"/troep
touch "heel raar"/troep/f.txt
mkdir -p ' a * -- '/rommel
touch ' a * -- '/rommel/g.txt
touch README
touch .hide
