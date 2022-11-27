{pkgs, ...}: {
  services.xserver = {
    enable = true;
    excludePackages = [pkgs.xterm];
    layout = "latam";

    libinput = {
      enable = true;
      touchpad = {
        naturalScrolling = true;
        tapping = true;
      };
    };

    desktopManager.gnome.enable = true;
    displayManager.gdm.enable = true;
  };
}
