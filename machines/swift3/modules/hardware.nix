{pkgs, ...}: {
  hardware = {
    bluetooth = {
      enable = true;
      package = pkgs.bluezFull;
    };
    cpu.intel.updateMicrocode = true;
    steam-hardware.enable = true;
    xpadneo.enable = true;
  };
}
