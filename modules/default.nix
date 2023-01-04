{
  modulesPath,
  home-manager,
  agenix,
  ...
}: {
  imports = [
    home-manager.nixosModules.home-manager
    agenix.nixosModules.age

    "${modulesPath}/installer/scan/not-detected.nix"
    ./age.nix
    ./boot.nix
    ./console.nix
    ./environment.nix
    ./fonts.nix
    ./hardware.nix
    ./home-manager.nix
    ./i18n.nix
    ./networking.nix
    ./nix.nix
    ./nixpkgs.nix
    ./programs.nix
    ./security.nix
    ./services.nix
    ./time.nix
    ./users.nix
    ./zram-swap.nix
  ];

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "23.05"; # Did you read the comment?
}
