#!/bin/bash

# kitty is a pre-requisite to hyprland
sudo pacman -Syu --no-confirm kitty \
                              uwsm \
                              libnewt

# install the components
sudo pacman -Syu --no-confirm hyprland \
                              hyprpaper \
                              wofi \
                              nemo \
                              waybar \
                              sddm \
                              qt5-wayland \
                              qt6-wayland \
                              nerd-fonts \
                              brightnessctl \
                              power-profiles-daemon \
                              pipewire-pulse \
                              pipewire-alsa \
                              playerctl \
                              dunst 

sudo pacman -S --needed base-devel
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si

pacman -Syu ghostty git 
curl -f https://zed.dev/install.sh | sh
export "PATH=$HOME/.local/bin:$PATH" > ~/.zshrc
source ~/.zshrc

cp -fR ./dotfiles/config ~/.config
