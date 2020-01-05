#!/bin/sh
echo "\$ZSH_VERSION=${(q)ZSH_VERSION}"
echo "\$TERM=${(q)TERM}"
echo "\$(tput colors)=$(tput colors 2>/dev/null)"
echo "\$(echotc Co)=$(echotc Co 2>/dev/null)"
echo "terminfo[colors]=${(q)terminfo[colors]}"
for ((i = 0; i != 256; ++i)); do print -Pn "%F{$i}\u2588%f"; done
