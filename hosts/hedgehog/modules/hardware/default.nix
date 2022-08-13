{
  imports = [
    ./bluetooth.nix
  ];

  hardware.enableRedistributableFirmware = true;
  hardware.cpu.intel.updateMicrocode = true;
  hardware.video.hidpi.enable = true;
  hardware.xpadneo.enable = true;
  hardware.sane.enable = true;
}
