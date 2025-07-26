#!/bin/bash

iwctl
 > device list
 > station wlan0 get-networks
 > station wlan0 connect \<SSID\>

# to check for network connection
ping google.com

sudo pacman -Sy
sudo pacman -S archlinux-keyring

cfdisk \</dev/nvme...\>
 > 1G partition     | EFI System
 > >20 GB partition | Linux filesystem

lsblk
mkfs.fat -F32 /dev/nvme... # device path of EFI System
mkfs.ext4 /dev/nvme... # device path of Linux filesystem

mount \<device path of Linux filesystem\> /mnt
mkdir /mnt/boot
mount \<device path of EFI System\> /mnt/boot
lsblk

archinstall
 > partitioning
  > pre-mounted configuration
   > /mnt
 > bootloader
  > grub
 > profile
  > desktop
   > GNOME
 > graphic driver
  > AMD/ATI (open source)
 > audio
  > pipewire
 > network configuration
  > Use NetworkManager
 > Timezone
  > Asia/Singapore