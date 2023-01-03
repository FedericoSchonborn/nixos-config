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

      desktopManager.plasma5 = {
        enable = true;
        phononBackend = "vlc";
      };

      displayManager = {
        sddm.enable = true;
        defaultSession = "plasmawayland";
      };
    };

    printing = {
      enable = true;
      stateless = true;
      webInterface = false;
    };
  };
}
