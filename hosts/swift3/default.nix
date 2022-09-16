{
  imports = [
    ../.

    ./boot
    ./programs
    ./services
    ./desktop.nix
    ./environment.nix
    ./file-systems.nix
    ./fonts.nix
    ./hardware.nix
    ./i18n.nix
    ./networking.nix
    ./nix.nix
    ./power-management.nix
    ./security.nix
    ./virtualisation.nix
    ./zram-swap.nix
  ];
}
