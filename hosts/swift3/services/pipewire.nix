{
  services.pipewire = {
    enable = true;

    alsa = {
      enable = true;
      support32Bit = true;
    };
    pulse.enable = true;

    wireplumber.enable = true;
  };

  # Required by Pipewire.
  hardware.pulseaudio.enable = false;
}
