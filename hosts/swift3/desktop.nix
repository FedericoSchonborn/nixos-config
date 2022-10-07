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

  environment.systemPackages = with pkgs; [
    kate
    vlc
  ];

  programs.kdeconnect.enable = true;
}