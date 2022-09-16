# Nix Config

NixOS configuration files.

## Install

### Acer Swift 3 (SF314-52)

```bash
# sgdisk -o /dev/sda
# sgdisk -n 0:0:+512M -t 0:ef00 /dev/sda
# sgdisk -n 0:0:0 -t 0:8200 /dev/sda
# mkfs.fat -F 32 /dev/sda1
# mkfs.ext4 /dev/sda2
# mount /dev/sda2 /mnt
# mkdir /mnt/boot
# mount /dev/sda1 /mnt/boot
# git clone https://github.com/FedericoSchonborn/nix-config
# pushd nix-config
# nixos-install --flake .#swift3 --no-root-password
```
