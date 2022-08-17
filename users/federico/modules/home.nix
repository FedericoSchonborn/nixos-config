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
