{ config, home-manager, modulesPath, ... }:

{
  imports = [
    (modulesPath + "/installer/scan/not-detected.nix")
    home-manager.nixosModule
    ./modules/boot.nix
    ./modules/environment.nix
    ./modules/file-systems.nix
    ./modules/gnome.nix
    ./modules/hardware.nix
    ./modules/i18n.nix
    ./modules/networking.nix
    ./modules/nix.nix
    ./modules/power-management.nix
    ./modules/programs.nix
    ./modules/qt5.nix
    ./modules/security.nix
    ./modules/services.nix
    ./modules/users.nix
    ./modules/virtualisation.nix
  ];

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "22.11"; # Did you read the comment?
}
