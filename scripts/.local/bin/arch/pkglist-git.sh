#!/bin/bash
TARGET="$HOME"/.local/share

# tempus theme
if [ ! -d "$TARGET/tempus-themes" ] ; then
	git clone https://gitlab.com/protesilaos/tempus-themes.git "$TARGET/tempus-themes"
	ln -s "$TARGET/tempus-themes/xcolors/" "$MY_COLORS/xcolors"
fi
#git clone https://github.com/andreafabrizi/Dropbox-Uploader.git
