{
  imports = [
    ./bluetooth.nix
  ];

  hardware.enableRedistributableFirmware = true;
  hardware.cpu.intel.updateMicrocode = true;
  hardware.opengl.driSupport32Bit = true;
  hardware.video.hidpi.enable = true;
  hardware.xpadneo.enable = true;
  hardware.sane.enable = true;
}
