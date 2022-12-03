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
      excludePackages = [pkgs.xterm];
      layout = "latam";

      libinput.enable = true;

      desktopManager.plasma5 = {
        enable = true;
        phononBackend = "vlc";
      };

      displayManager = {
        defaultSession = "plasmawayland";
        sddm.enable = true;
      };
    };

    printing = {
      enable = true;
      stateless = true;
      webInterface = false;
    };
  };

  # Required by Pipewire.
  hardware.pulseaudio.enable = false;
}
