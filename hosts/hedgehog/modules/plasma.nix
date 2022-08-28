{ pkgs, ... }:

{
  services.xserver = {
    desktopManager.plasma5 = {
      enable = true;
      phononBackend = "vlc";
    };

    displayManager.sddm.enable = true;
  };
}
