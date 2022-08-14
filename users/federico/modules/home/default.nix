{ pkgs, ... }:

{
  home = {
    username = "federico";
    homeDirectory = "/home/federico";

    # Packages that should be installed to the user profile.
    packages = with pkgs; [
      bitwarden
      discord
      gimp
      inkscape
      element-desktop
      minecraft
      spotify
      tdesktop
      rnix-lsp
      nixfmt
    ];
  };
}
