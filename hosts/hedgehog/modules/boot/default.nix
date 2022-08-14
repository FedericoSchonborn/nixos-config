{ pkgs, ... }:

{
  imports = [
    ./loader.nix
  ];

  boot.extraModulePackages = [ ];
  boot.initrd.availableKernelModules = [ "xhci_pci" "ahci" "usbhid" "uas" "usb_storage" "sd_mod" "rtsx_usb_sdmmc" ];
  boot.initrd.kernelModules = [ ];
  boot.kernelModules = [ "kvm-intel" ];
  boot.kernelPackages = pkgs.linuxPackages_latest;
  boot.plymouth.enable = true;
  boot.supportedFilesystems = [ "ntfs" "exfat" ];
}
