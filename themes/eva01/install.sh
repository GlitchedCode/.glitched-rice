#!/bin/bash

mkdir -p $HOME/.themes
mkdir -p $HOME/.fonts

cp -r $HOME/.glitched-rice/themes/eva01/oomox-evangelion2 $HOME/.themes
cp $HOME/.glitched-rice/themes/eva01/FreeNERVControl.ttf $HOME/.fonts
cp $HOME/.glitched-rice/themes/eva01/FreeNERVControl.otf $HOME/.fonts

fc-cache -f -v
