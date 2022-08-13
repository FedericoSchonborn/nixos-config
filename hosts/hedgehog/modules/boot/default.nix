{ pkgs, ... }:

{
  imports = [
    ./loader.nix
  ];

  boot.kernelPackages = pkgs.linuxPackages_latest;
  boot.plymouth.enable = true;
}
