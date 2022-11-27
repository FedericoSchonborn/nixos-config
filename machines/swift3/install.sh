#!/usr/bin/env bash
sgdisk -o /dev/sda
sgdisk -n 0:0:+512M -t 0:ef00 /dev/sda
sgdisk -n 0:0:0 -t 0:8200 /dev/sda
mkfs.fat -F 32 /dev/sda1
mkfs.ext4 /dev/sda2
mount --mkdir /dev/sda2 /mnt
mount --mkdir /dev/sda1 /mnt/boot
nixos-install --verbose --flake ".#swift3" --no-channel-copy --no-root-password
