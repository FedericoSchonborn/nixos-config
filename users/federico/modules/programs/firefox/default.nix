{pkgs, ...}: {
  imports = [
    ./extensions.nix
    ./profiles.nix
  ];

  programs.firefox.enable = true;
}
