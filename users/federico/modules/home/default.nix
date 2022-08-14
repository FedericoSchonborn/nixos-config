{ pkgs, ... }:

{
  home = {
    username = "federico";
    homeDirectory = "/home/federico";

    # Packages that should be installed to the user profile.
    packages = with pkgs; with gnomeExtensions; [
      bitwarden
      discord
      element-desktop
      fenix.stable.defaultToolchain
      firefox
      gimp
      grml-zsh-config
      inkscape
      libreoffice-fresh
      minecraft
      nix-zsh-completions
      nixfmt
      rnix-lsp
      spotify
      tdesktop
      appindicator
      dash-to-dock
      desktop-icons-ng-ding
    ];
  };
}
