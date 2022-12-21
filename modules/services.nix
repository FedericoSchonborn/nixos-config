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

      desktopManager.budgie = {
        enable = true;
        pluginPackages = with pkgs; [
          budgiePlugins.budgie-screenshot-applet
        ];
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
