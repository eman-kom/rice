#!/bin/bash

# After archinstall.sh

# 1. chroot into installed partition then:
sudo pacman -S grub efibootmgr dosfstools mtools
grub-install --target=x86_64-efi --efi-directory=/boot --bootloader-id=GRUB
grub-mkconfig -o /boot/grub/grub.cfg

# 2. exit from installed partition
umount -lR /mnt
sudo reboot