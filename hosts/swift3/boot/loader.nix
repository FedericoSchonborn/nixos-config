{
  boot.loader = {
    timeout = 0;
    efi = {
      canTouchEfiVariables = true;
      efiSysMountPoint = "/boot";
    };

    systemd-boot.enable = true;
  };
}
