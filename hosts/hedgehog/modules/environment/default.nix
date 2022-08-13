{ pkgs, ... }:

{
  environment.localBinInPath = true;
  environment.systemPackages = with pkgs; [
    firefox
    libreoffice-fresh
    nix-zsh-completions
    grml-zsh-config
    nixos-option
  ];

  # Only required by GNOME.
  environment.gnome.excludePackages = with pkgs.gnome; [
    epiphany
    gnome-software
  ];
}
