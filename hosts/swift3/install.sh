#!/usr/bin/env bash
sgdisk -o /dev/sda
sgdisk -n 0:0:+512M -t 0:ef00 /dev/sda
sgdisk -n 0:0:0 -t 0:8200 /dev/sda
mkfs.fat -F 32 /dev/sda1
mkfs.ext4 /dev/sda2
mount /dev/sda2 /mnt
mkdir /mnt/boot
mount /dev/sda1 /mnt/boot
git clone --depth 1 https://github.com/FedericoSchonborn/nixos-config
pushd nixos-config
nixos-install --verbose --flake ".#swift3" --no-channel-copy --no-root-password
popd
