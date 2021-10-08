#!/bin/bash

REPO_PACKAGES="yay vim code i3-gaps conky-lua-nv cmus ranger neofetch lolcat tmux ttf-font-awesome maim pactl kitty rofi picom networkmanager blueman spectacle nautilus feh"
AUR_PACKAGES="polybar-git"

sudo pacman -S ${PACKAGES}
sudo yay -S ${AUR_PACKAGES}
