{
  imports = [
    ./loader.nix
  ];

  boot = {
    kernelModules = ["kvm-amd"];
    supportedFilesystems = ["ntfs" "exfat"];

    initrd = {
      availableKernelModules = ["ahci" "ohci_pci" "ehci_pci" "usb_storage" "ums_realtek" "usbhid" "sd_mod" "sr_mod"];
    };
  };
}
