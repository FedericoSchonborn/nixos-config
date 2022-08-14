{ pkgs, ... }:

{
  services.xserver = {
    enable = true;
    excludePackages = [ pkgs.xterm ];
    layout = "latam";

    libinput = {
      enable = true;
      touchpad = {
        naturalScrolling = true;
        tapping = true;
      };
    };
  };

  # Use the same keyboard layout in the virtual console.
  console.useXkbConfig = true;
}
