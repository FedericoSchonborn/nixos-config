{ pkgs, ... }:

{
  hardware.bluetooth = {
    enable = true;
    package = pkgs.bluezFull;
    powerOnBoot = true;
  };
}
