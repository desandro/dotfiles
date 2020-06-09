#!/usr/bin/env bash

# sync only .dotfiles
function sync() {
	cp -R homefiles/ ~
}
if [ "$1" == "--force" -o "$1" == "-f" ]; then
	sync
else
	read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1
	echo
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		sync
	fi
fi
unset sync
source ~/.bash_profile
