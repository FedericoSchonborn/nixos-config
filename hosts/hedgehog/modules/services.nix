{
  imports = [
    ./services/pipewire.nix
    ./services/xserver.nix
  ];

  services.printing.enable = true;
}
