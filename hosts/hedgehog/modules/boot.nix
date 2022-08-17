{ pkgs, ... }:

{
  imports = [
    ./boot/loader.nix
  ];

  boot = {
    extraModulePackages = [ ];
    kernelModules = [ "kvm-intel" ];
    kernelPackages = pkgs.linuxPackages_latest;
    plymouth.enable = true;
    supportedFilesystems = [ "ntfs" "exfat" ];

    initrd = {
      availableKernelModules = [
        "xhci_pci"
        "ahci"
        "usbhid"
        "uas"
        "usb_storage"
        "sd_mod"
        "rtsx_usb_sdmmc"
      ];
      kernelModules = [ ];
    };
  };
}
