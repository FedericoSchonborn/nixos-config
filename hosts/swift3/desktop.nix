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
    # Graphics
    plasma5Packages.kamoso
    skanlite
    # Multimedia
    vlc
    # Utilities
    kate
  ];

  programs = {
    kdeconnect.enable = true;
    ssh.askPassword = "${pkgs.ksshaskpass}/bin/ksshaskpass";
  };
}
