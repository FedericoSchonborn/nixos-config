{
  services.pipewire = {
    enable = true;
    pulse.enable = true;
    wireplumber.enable = true;

    alsa = {
      enable = true;
      support32Bit = true;
    };
  };

  # Required by Pipewire.
  hardware.pulseaudio.enable = false;
}