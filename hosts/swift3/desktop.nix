{pkgs, ...}: {
  services.xserver = {
    desktopManager.gnome.enable = true;
    displayManager.gdm.enable = true;
  };

  environment.gnome.excludePackages = with pkgs; [
    epiphany
  ];
}
