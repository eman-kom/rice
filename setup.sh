#!/bin/bash

# kitty is a pre-requisite to hyprland
sudo pacman -Syu --no-confirm kitty \
                              uwsm \
                              libnewt \
                              dunst \
                              btop

# install the components
sudo pacman -Syu --no-confirm hyprland \
                              wofi \
                              nemo \
                              waybar \
                              ghostty

# install waybar dependencies
sudo pacman -Syu --no-confirm nerd-fonts \
                              brightnessctl \
                              power-profiles-daemon \
                              playerctl

pacman -Syu git 
curl -f https://zed.dev/install.sh | sh
export "PATH=$HOME/.local/bin:$PATH" > ~/.zshrc
source ~/.zshrc

git clone https://github.com/danyspin97/wpaperd
cd wpaperd
cargo build --release
cd target/release
mv wpaperd ~/.local/bin/wpaperd
mv wpaperctl ~/.local/bin/
cd ~

cp -fR ./dotfiles/config ~/.config
