{
  imports = [ ./pipewire.nix ./xserver.nix ];

  services.printing.enable = true;
}
