#!/bin/bash 

if [[ -d ~/.glitched-rice/themes/$1/ ]] && [[ -n $1  ]]; then
	mkdir -p "$HOME/.config/i3"
	mkdir -p "$HOME/.glitched-rice/current"
	rm -rf $HOME/.glitched-rice/current/*

	# replacing i3 config
	mv -f "$HOME/.config/i3/config.old.old" "$HOME/.config/i3/config.old.old.old" 2> /dev/null
	mv -f "$HOME/.config/i3/config.old" "$HOME/.config/i3/config.old.old" 2> /dev/null
	mv -f "$HOME/.config/i3/config" "$HOME/.config/i3/config.old" 2> /dev/null
	cat "$HOME/.glitched-rice/i3/config" "$HOME/.glitched-rice/themes/$1/i3theme" > "$HOME/.config/i3/config"
	
	ln -s "$HOME/.glitched-rice/themes/$1/polybar-conf" "$HOME/.glitched-rice/current/"
	ln -s "$HOME/.glitched-rice/themes/$1/rofi.rasi" "$HOME/.glitched-rice/current/"
	ln -s "$HOME/.glitched-rice/themes/$1/conky-system" "$HOME/.glitched-rice/current/"
	ln -s "$HOME/.glitched-rice/themes/$1/bg" "$HOME/.glitched-rice/current/"
	
	THEME_SPECIFIC_SCRIPT=$HOME/.glitched-rice/themes/$1/install.sh

	if [[ -d $THEME_SPECIFIC_SCRIPT  ]]; then
		$THEME_SPECIFIC_SCRIPT
	fi
	cat $HOME/.glitched-rice/themes/$1/install-msg
else
	echo Invalid theme name. Available themes are:
	for f in $HOME/.glitched-rice/themes/*; do
		if [[ -d $f ]]; then
			basename $f
		fi
	done
fi
