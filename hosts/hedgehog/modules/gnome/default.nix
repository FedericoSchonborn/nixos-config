{ pkgs, ... }:

{
  environment.gnome.excludePackages = with pkgs.gnome; [ epiphany gnome-software ];

  services.xserver = {
    desktopManager.gnome.enable = true;
    displayManager.gdm.enable = true;
  };
}
