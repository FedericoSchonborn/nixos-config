{pkgs, ...}: {
  services.xserver = {
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
