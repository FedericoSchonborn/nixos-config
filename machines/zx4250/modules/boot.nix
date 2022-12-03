{
  boot = {
    kernelModules = ["kvm-amd"];
    initrd.availableKernelModules = ["ahci" "ohci_pci" "ehci_pci" "usb_storage" "ums_realtek" "usbhid" "sd_mod" "sr_mod"];
  };
}
