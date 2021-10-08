#!/bin/bash

RICE_HOMEDIR=".glitched-rice"

if [[ -n $1 ]]; then
	~/${RICE_HOMEDIR}/scripts/$1/
fi

if [[ ! -e .glitched-rice-installed ]]; then
	echo source '"${RICE_HOMEDIR}/profile"' >> .profile
	echo source '"${RICE_HOMEDIR}/alias"' >> .zshrc
	echo source '"${RICE_HOMEDIR}/alias"' >> .bashrc
	touch .glitched-rice-installed
else
	echo "Home dotfiles already set, remove the .glitched-rice-installed file to allow the script to reinstall them."
fi
