{ pkgs, ... }:

{
  environment.localBinInPath = true;
  environment.systemPackages = with pkgs; [
    firefox
    kate
    spectacle
    libreoffice-fresh
    nix-zsh-completions
    grml-zsh-config
    nixos-option
  ];
}
