{pkgs, ...}: {
  boot = {
    kernelModules = ["kvm-intel"];
    kernelPackages = pkgs.linuxPackages_latest;
    initrd.availableKernelModules = ["xhci_pci" "ahci" "usbhid" "uas" "usb_storage" "sd_mod" "rtsx_usb_sdmmc"];
  };
}
