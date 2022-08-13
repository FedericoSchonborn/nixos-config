{ pkgs, ... }:

{
  services.xserver = {
    enable = true;
    excludePackages = [ pkgs.xterm ];
    layout = "latam";

    # Plasma
    # displayManager = {
    #   defaultSession = "plasmawayland"; # Wayland 😎
    #
    #   sddm = {
    #     enable = true;
    #     autoNumlock = true;
    #   };
    # };
    #
    # desktopManager.plasma5 = {
    #   enable = true;
    #   phononBackend = "vlc";
    # };

    # GNOME
    displayManager.gdm.enable = true;

    desktopManager.gnome = {
      enable = true;
    };

    libinput = {
      enable = true;
      touchpad.naturalScrolling = true;
    };
  };

  # Use the same keyboard layout in the virtual console.
  console.useXkbConfig = true;
}
