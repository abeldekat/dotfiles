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
#If a fontname is not working, check for a match with xlsfonts.
#xlsfonts -fn "*-fixed-medium-r-n*--13-120-75-*-iso1*-1"
# xlsfonts -ll -fn fixed

# x11: /usr/share/X11, met conf.d
# x11: /etc/X11, met lege conf.d

#yes, Xorg stores it's default files here : /usr/share/X11/xorg.conf.d The only files present in /etc/X11/xorg.conf.d are those you create yourself.
# Belangrijk: https://bbs.archlinux.org/viewtopic.php?id=142648
