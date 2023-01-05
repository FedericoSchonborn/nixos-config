{pkgs, ...}: {
  imports = [
    ./profiles.nix
  ];

  programs.firefox.enable = true;
}
