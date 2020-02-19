#!/bin/bash

# Script for easy stow on a clean arch system

DOTFILES="$HOME/dotfiles"
MY_DEFAULTS="$DOTFILES/Archinstall-nostow/defaults"
MY_COLORS="$HOME/.local/share/my_colors"
MY_TERMITE="$HOME/.config/termite"

_apply(){
	echo "Packages: "${1}
	stow -t "$HOME" -d "$DOTFILES" $2 -v$_run$_operation ${1} \
	|| exit 1
}

_nofolding=("vim" "termite")
# all packages without any capitals except the ones for non folded stow
_all="$(echo $(ls $DOTFILES --ignore='[A-Z]*') | sed \
	-e 's/ '"${_nofolding[0]}"'//' \
	-e 's/ '"${_nofolding[1]}"'//' \
	)"
_operation="S"
_run="n"

while getopts "hyD" o; do case "${o}" in
	h) 
		printf "No arguments: Do a test run with -S operation\\n\
-y: No test, perform the supplied operation. Defaults to -S \\n\
-D: Unstow, removes the links\\n\
-h: Show this message \\n" && exit ;;
	y) 
		_run="" ;;
	D) 
		 _operation="D";;
	*) 
		printf "Invalid option: -%s\\n" "$OPTARG" && exit ;;
	esac 
done

echo "=== First run of two stow commands: normal stow"
_apply "${_all}"
echo "=== Second run of two stow commands: stow with no folding"
	echo "Packages: ${_nofolding[*]}"
_apply "${_nofolding[*]}" "--no-folding"


#if [ ! -d "$MY_COLORS" ] ; then
#  echo "Adding $MY_COLORS ..."
#  mkdir -p "$MY_COLORS"
#fi
#echo " adding defaults to $MY_COLORS ..."
#cp -r "$MY_DEFAULTS/colors/"* "$MY_COLORS"
#
#if [ ! -d "$MY_TERMITE" ] ; then
#  echo "Adding $MY_TERMITE ..."
#  mkdir -p "$MY_TERMITE"
#fi
#echo " adding default to $MY_TERMITE ..."
#cp -r "$MY_DEFAULTS/termite/"* "$MY_TERMITE"
#
## Test stow
#echo "Simulating stow with all lowercase packages..."
#stow -t $HOME -d $DOTFILES -vnS `ls $DOTFILES --ignore='[A-Z]*'`
