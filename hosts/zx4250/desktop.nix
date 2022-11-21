{pkgs, ...}: {
  services.xserver = {
    displayManager = {
      sddm.enable = true;
    };

    desktopManager.lxqt = {
      enable = true;
    };
  };

  environment.systemPackages = with pkgs; [
    vlc
  ];
}
