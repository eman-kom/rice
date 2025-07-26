#!/bin/bash

# kitty is a pre-requisite to hyprland
sudo pacman -Syu kitty

# install the components
sudo pacman -Syu hyprland \
                 wofi \
                 nemo \
                 waybar \
                 sddm

sudo pacman -S --needed base-devel
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si

pacman -Syu ghostty git 