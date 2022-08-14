{ pkgs, ... }:

{
  environment = {
    gnome.excludePackages = with pkgs.gnome; [
      epiphany
      gnome-software
    ];
    localBinInPath = true;
    systemPackages = with pkgs; [
      firefox
      grml-zsh-config
      libreoffice-fresh
      nix-zsh-completions
      nixos-option
    ];
  };
}
