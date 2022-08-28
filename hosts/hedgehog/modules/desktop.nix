{ pkgs, ... }:

{
  environment.gnome.excludePackages = with pkgs; [
    epiphany
  ];

  services.xserver = {
    desktopManager.gnome.enable = true;
    displayManager.gdm.enable = true;
  };
}
