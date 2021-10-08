#!/bin/bash

if [[ -d ~/.glitched-rice/themes/$1/ ]] && [[ -n $1  ]]; then
	mkdir -p "$HOME/.config/i3"
	mkdir -p "$HOME/.glitched-rice/current"
	rm -rf "$HOME/.glitched-rice/current/*"
	mkdir -p "$HOME/.themes"

	# replacing i3 config
	mv -f "$HOME/.config/i3/config.old.old" "$HOME/.config/i3/config.old.old.old"
	mv -f "$HOME/.config/i3/config.old" "$HOME/.config/i3/config.old.old"
	mv -f "$HOME/.config/i3/config" "$HOME/.config/i3/config.old"
	cat "$HOME/.glitched-rice/i3/config" "$HOME/.glitched-rice/themes/$1/i3theme" > "$HOME/.config/i3/config"
	
	ln -s "$HOME/.glitched-rice/themes/$1/polybar-conf" "$HOME/.glitched-rice/current/"
	ln -s "$HOME/.glitched-rice/themes/$1/rofi.rasi" "$HOME/.glitched-rice/current/"
	ln -s "$HOME/.glitched-rice/themes/$1/conky-system" "$HOME/.glitched-rice/current/"
	ln -s "$HOME/.glitched-rice/themes/$1/bg" "$HOME/.glitched-rice/current/"
	
	THEME_NAME_SCRIPT="$HOME/.glitched-rice/themes/$1/theme-name.sh"
	cp -r "$HOME/.glitched-rice/themes/$1/`${THEME_NAME_SCRIPT}`" "$HOME/.themes/"
else
	echo Invalid theme name. Available themes are:
	for f in "$HOME/.glitched-rice/themes/*"; do
		if [[ -d $f ]]; then
			basename $f
		fi
	done
fi
