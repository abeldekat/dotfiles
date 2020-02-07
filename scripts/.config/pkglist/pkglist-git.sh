#!/bin/bash
TARGET="$HOME"/.local/share
# tempus theme
if [ ! -d "$TARGET/tempus-themes" ] ; then
	git clone https://gitlab.com/protesilaos/tempus-themes.git "$TARGET/tempus-themes"
	mkdir "$TARGET/my_colours"
	ln -s "$TARGET/tempus-themes/xcolors/" "$TARGET/my_colours/xcolors"
fi
