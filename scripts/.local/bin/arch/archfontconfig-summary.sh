#!/bin/sh

# Library, fonts to applications. Freetype2 font rendering packages, bytecode interpreter BCI.

# Though Fontconfig is used often in modern Unix and Unix-like operating systems, some applications rely on the original method of font selection and display, the X Logical Font Description.
# /usr/share/fonts ~/.local/share/fonts

# fc-list: file
# xorg known font paths
grep /fonts ~/.local/share/xorg/Xorg.0.log
xset q
# fonts known to xorg. Change with xset +fp
xlsfonts

# conf.d and conf.avail, linking enables...Also possible in xdg home
# hintfull for fonts is not necessary for displays that have around 300dpi
xdpyinfo | grep dots

# To find out what settings are in effect, use fc-match --verbose. eg. 
fc-match --verbose Sans

# https://wiki.archlinux.org/index.php/X_Logical_Font_Description
# There are a couple of different font systems used in X. XFT (fontconfig) and the older system. xfontsel uses the old style font system.
