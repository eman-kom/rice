#!/bin/bash

# Inside arch GUI environment 

sed -i 's/GRUB_TIMEOUT=5/GRUB_TIMEOUT=30/g' /etc/default/grub
sed -i 's/#GRUB_DISABLE_OS_PROBER/GRUB_DISABLE_OS_PROBER/g' /etc/default/grub

sudo pacman -Syu os-prober
sudo grub-mkconfig -o /boot/grub/grub.cfg

sudo pacman -Syu zsh curl git
chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
