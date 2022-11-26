{
  modulesPath,
  nixos-hardware,
  ...
}: {
  imports = [
    nixos-hardware.nixosModules.common-cpu-intel-kaby-lake
    nixos-hardware.nixosModules.common-gpu-intel
    nixos-hardware.nixosModules.common-pc-laptop
    nixos-hardware.nixosModules.common-pc-laptop-ssd

    (modulesPath + "/installer/scan/not-detected.nix")
    ./boot
    ./console.nix
    ./default.nix
    ./desktop.nix
    ./environment.nix
    ./file-systems.nix
    ./fonts.nix
    ./hardware
    ./i18n.nix
    ./networking
    ./nix.nix
    ./nixpkgs.nix
    ./power-management.nix
    ./programs
    ./security
    ./services
    ./time.nix
    ./users.nix
    ./virtualisation
    ./zram-swap.nix
  ];

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "22.11"; # Did you read the comment?
}
