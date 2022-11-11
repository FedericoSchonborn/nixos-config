{pkgs, ...}: {
  services.xserver = {
    displayManager = {
      defaultSession = "plasmawayland";
      sddm.enable = true;
    };

    desktopManager.plasma5 = {
      enable = true;
      phononBackend = "vlc";
    };
  };

  environment.systemPackages = with pkgs; [
    kate
    vlc
  ];
}
