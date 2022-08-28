{ pkgs, ... }:

{
  home = {
    username = "federico";
    homeDirectory = "/home/federico";

    file.".zshrc" = {
      source = ./home/zshrc;
    };

    # Packages that should be installed to the user profile.
    packages = with pkgs; with gnomeExtensions; [
      bitwarden
      discord
      element-desktop
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

      # GNOME Extensions
      appindicator
      bluetooth-quick-connect
      desktop-icons-ng-ding
      dash-to-panel
      sound-output-device-chooser
      tiling-assistant
    ];
  };
}
