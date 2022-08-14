{ pkgs, ... }:

{
  services.xserver = {
    enable = true;
    displayManager.gdm.enable = true;
    desktopManager.gnome.enable = true;
    excludePackages = [ pkgs.xterm ];
    layout = "latam";

    libinput = {
      enable = true;
      touchpad.naturalScrolling = true;
    };
  };

  # Use the same keyboard layout in the virtual console.
  console.useXkbConfig = true;
}
