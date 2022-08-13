{
  imports = [
    ./bluetooth.nix
  ];

  hardware.cpu.intel.updateMicrocode = true;
  hardware.enableRedistributableFirmware = true;
  hardware.sane.enable = true;
  hardware.video.hidpi.enable = true;
  hardware.xpadneo.enable = true;
  # Required by Pipewire.
  hardware.pulseaudio.enable = false;
}
