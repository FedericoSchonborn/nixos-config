{
  boot = {
    binfmt.emulatedSystems = ["aarch64-linux"];
    extraModprobeConfig = ''
      options bluetooth disable_ertm=1
    '';
    initrd.availableKernelModules = ["xhci_pci" "ahci" "usbhid" "uas" "usb_storage" "sd_mod" "rtsx_usb_sdmmc"];
    kernelModules = ["kvm-intel"];
  };
}
