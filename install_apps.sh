#!/bin/bash

RICE_HOMEDIR=".glitched-rice"

if [[ -n $1 ]]; then
	"$HOME/${RICE_HOMEDIR}/scripts/$1/desktop_apps.sh"
fi

if [[ ! -e $HOME/.glitched-rice-installed ]]; then
	echo source '"$HOME/${RICE_HOMEDIR}/profile"' >> $HOME/.profile
	echo source '"$HOME/${RICE_HOMEDIR}/alias"' >> $HOME/.zshrc
	echo source '"$HOME/${RICE_HOMEDIR}/alias"' >> $HOME/.bashrc
	touch $HOME/.glitched-rice-installed
else
	echo "Home dotfiles already set, remove the .glitched-rice-installed file to allow the script to reinstall them."
fi
