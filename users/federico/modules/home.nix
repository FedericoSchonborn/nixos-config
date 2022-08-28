{ pkgs, ... }:

{
  home = {
    username = "federico";
    homeDirectory = "/home/federico";

    file.".zshrc" = {
      source = ./home/zshrc;
    };

    # Packages that should be installed to the user profile.
    packages = with pkgs; [
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
      spotify
    ];
  };
}
