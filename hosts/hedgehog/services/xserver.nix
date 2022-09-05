{pkgs, ...}: {
  services.xserver = {
    enable = true;
    excludePackages = [pkgs.xterm];

    libinput = {
      enable = true;
      touchpad = {
        naturalScrolling = true;
        tapping = true;
      };
    };
  };
}
