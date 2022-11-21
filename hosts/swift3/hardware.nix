{pkgs, ...}: {
  boot = {
    kernelModules = ["kvm-intel"];
    kernelPackages = pkgs.linuxPackages_latest;
    initrd.availableKernelModules = ["xhci_pci" "ahci" "usbhid" "uas" "usb_storage" "sd_mod" "rtsx_usb_sdmmc"];
  };

  hardware = {
    bluetooth = {
      enable = true;
      package = pkgs.bluezFull;
    };

    cpu.intel.updateMicrocode = true;
    sane.enable = true;
    xpadneo.enable = true;
  };

  services.hardware.openrgb = {
    enable = true;
    motherboard = "intel";
  };

  powerManagement.enable = true;
}
