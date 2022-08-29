{ pkgs, ... }:

{
  imports = [
    ./vscode/extensions.nix
    ./vscode/keybindings.nix
    ./vscode/settings.nix
  ];

  programs.vscode = {
    enable = true;
    mutableExtensionsDir = false;
  };
}
