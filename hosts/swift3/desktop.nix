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

  programs.kdeconnect.enable = true;
  programs.ssh.askPassword = "${pkgs.ksshaskpass}/bin/ksshaskpass";
}
