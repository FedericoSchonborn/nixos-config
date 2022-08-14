{
  imports = [ ./bluetooth.nix ];

  hardware.cpu.intel.updateMicrocode = true;
  hardware.enableRedistributableFirmware = true;
  hardware.pulseaudio.enable = false;
  hardware.sane.enable = true;
  hardware.video.hidpi.enable = true;
  hardware.xpadneo.enable = true;
}
