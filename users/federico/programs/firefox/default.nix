{pkgs, ...}: {
  imports = [
    ./profiles.nix
  ];

  programs.firefox = {
    enable = true;
    package = pkgs.firefox.override {
      cfg = {
        enableGnomeExtensions = true;
      };
    };
  };
}
