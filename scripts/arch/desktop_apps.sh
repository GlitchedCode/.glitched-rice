#!/bin/bash

<<<<<<< HEAD
REPO_PACKAGES="yay vim code i3-gaps conky-lua-nv cmus ranger neofetch lolcat tmux ttf-font-awesome maim playerctl kitty rofi picom networkmanager blueman spectacle nautilus feh"
=======
REPO_PACKAGES="yay vim code i3-gaps conky-lua-nv cmus ranger neofetch lolcat tmux ttf-font-awesome maim pactl kitty rofi picom networkmanager blueman spectacle nautilus feh"
>>>>>>> 49e24193d6c7beb5d9bc29f36f3031fb6fe074f2
AUR_PACKAGES="polybar-git"

sudo pacman -S ${PACKAGES}
sudo yay -S ${AUR_PACKAGES}
