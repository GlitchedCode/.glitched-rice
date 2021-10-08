#!/bin/bash -x

if [[ -d ~/.glitched-rice/themes/$1 ]]; then
	mkdir -p ~/.config/i3
	mkdir -p ~/.glitched-rice/current
	rm -rf ~/.glitched-rice/current/*
	mkdir -p ~/.themes

	# replacing i3 config
	mv -f ~/.config/i3/config.old.old ~/.config/i3/config.old.old.old
	mv -f ~/.config/i3/config.old ~/.config/i3/config.old.old
	mv -f ~/.config/i3/config ~/.config/i3/config.old
	cat ~/.glitched-rice/i3/config ~/.glitched-rice/themes/$1/i3theme > ~/.config/i3/config
	
	ln -s ~/.glitched-rice/themes/$1/polybar-conf ~/.glitched-rice/current/
	ln -s ~/.glitched-rice/themes/$1/rofi.rasi ~/.glitched-rice/current/
	ln -s ~/.glitched-rice/themes/$1/conky-system ~/.glitched-rice/current/
	ln -s ~/.glitched-rice/themes/$1/bg ~/.glitched-rice/current/
	
	THEME_NAME_SCRIPT=~/.glitched-rice/themes/$1/theme-name.sh
	cp -r "~/.glitched-rice/themes/$1/`${THEME_NAME_SCRIPT}`" ~/.themes/
else
	echo Invalid theme name. Available themes are:
	ls -d ~/.glitched-rice/themes/*/
fi
