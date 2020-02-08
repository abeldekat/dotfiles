#! /bin/bash

# choosen themes from termite-color-switcher
#atelierdune
#brewer
#default
#google
#mocha
#monokai
#solarized
#tomorrow
#twilight

themepath=/usr/lib/python3.8/site-packages/pywal
#wal --theme base16-google
#wal --theme base16-mocha
#wal --theme base16-atelier-dune
wal --theme tempus_dawn -l

echo "Stop panel"
pkill panel

echo "reload bspwm"
~/.config/bspwm/bspwmrc

termpath=~/.config/termite
walpath=~/.cache/wal
cat $walpath/colors.termite > /tmp/wall.out
cat $termpath/option >> /tmp/wall.out
mv /tmp/wall.out $termpath/config
