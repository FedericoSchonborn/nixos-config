# nixos-config

NixOS configuration files.

## Install

### Acer Swift 3 (SF314-52)

```bash
# sgdisk -o /dev/sda
# sgdisk -n 0:0:+512M -t 0:ef00 /dev/sda
# sgdisk -n 0:0:0 -t 0:8200 /dev/sda
# parted /dev/sda -- mkpart primary 1MB 512MB
# parted /dev/sda -- mkpart primary 512MB 100%
# mkfs.fat -F 32 /dev/sda1
# mkfs.ext4 /dev/sda2
# mount /dev/sda2 /mnt
# mkdir /mnt/boot
# mount /dev/sda1 /mnt/boot
# git clone https://github.com/FedericoSchonborn/nixos-config
# cd nixos-config
# nixos-install --flake .#hedgehog --no-root-password
```
