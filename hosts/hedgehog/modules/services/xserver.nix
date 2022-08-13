{ pkgs, ... }:

{
  services.xserver = {
    enable = true;
    excludePackages = [ pkgs.xterm ];
    layout = "latam";

    displayManager = {
      defaultSession = "plasmawayland"; # Wayland 😎

      sddm = {
        enable = true;
        autoNumlock = true;
      };
    };

    desktopManager.plasma5 = {
      enable = true;
      phononBackend = "vlc";
    };

    libinput = {
      enable = true;
      touchpad.naturalScrolling = true;
    };
  };

  # Use the same keyboard layout in the virtual console.
  console.useXkbConfig = true;
}
