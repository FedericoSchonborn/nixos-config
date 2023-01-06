{pkgs, ...}: {
  services = {
    pipewire = {
      enable = true;

      alsa = {
        enable = true;
        support32Bit = true;
      };
      pulse.enable = true;
    };

    xserver = {
      enable = true;
      excludePackages = with pkgs; [
        xterm
      ];
      layout = "latam";
      libinput.enable = true;

      desktopManager.gnome.enable = true;
      displayManager.gdm.enable = true;
    };

    printing = {
      enable = true;
      stateless = true;
      webInterface = false;
    };
  };
}
