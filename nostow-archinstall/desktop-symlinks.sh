#!/bin/bash

_date="$(echo $(date "+%Y%d%m"))"
_bak="$HOME/bak/$_date"
_storage="/mnt/storage/data/$USER"
echo "User is $USER"
echo "Backup dir is $_bak"
echo "Storage dir is $_storage"
mkdir -p "$_bak"

_backup(){
	echo "Backup $1"
	mv "$1" "$_bak"
}

_link(){
	echo "Link $1 $2"
	ln -s $1 $2
}

_apply(){
	local target="$HOME/$1"
	echo "target is $target"
	local source="$_storage/$1"
	echo "source is $source"

	if [ ! -L $target ] && [ -d $target ] ; then 
		echo "Applying..."
		_backup "$target"
		_link "$source $target"
	fi
}

_apply "Documents"
_apply "Downloads"
_apply "Music"
_apply "Pictures"
_apply "Videos"
