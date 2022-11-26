{pkgs, ...}: {
  services.xserver = {
    enable = true;
    excludePackages = [pkgs.xterm];
    layout = "latam";

    libinput = {
      enable = true;
      touchpad = {
        naturalScrolling = true;
        tapping = true;
      };
    };

    desktopManager.plasma5 = {
      enable = true;
      phononBackend = "vlc";
    };

    displayManager = {
      defaultSession = "plasmawayland";
      sddm.enable = true;
    };
  };
}
