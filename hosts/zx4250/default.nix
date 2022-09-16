{
  imports = [
    ../.

    ./boot
    ./services
    ./desktop.nix
    ./environment.nix
    ./file-systems.nix
    ./fonts.nix
    ./hardware.nix
    ./i18n.nix
    ./networking.nix
    ./nix.nix
    ./zram-swap.nix
  ];
}
