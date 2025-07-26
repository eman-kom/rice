#!/bin/bash

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# kitty is a pre-requisite to hyprland
sudo pacman -Syu kitty \
                 uwsm \
                 libnewt

# install the components
sudo pacman -Syu hyprland \
                 hyprpaper \
                 wofi \
                 nemo \
                 waybar \
                 sddm \
                 qt5-wayland \
                 qt6-wayland \

sudo pacman -S --needed base-devel
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si

pacman -Syu ghostty git 
curl -f https://zed.dev/install.sh | sh
export "PATH=$HOME/.local/bin:$PATH" > ~/.zshrc
source ~/.zshrc
