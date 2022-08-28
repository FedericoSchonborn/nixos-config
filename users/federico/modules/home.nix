{ pkgs, ... }:

{
  home = {
    username = "federico";
    homeDirectory = "/home/federico";

    # Packages that should be installed to the user profile.
    packages = with pkgs; [
      bitwarden
      discord
      element-desktop
      firefox
      gimp
      inkscape
      libreoffice-fresh
      minecraft
      spotify
    ];
  };
}
