{ pkgs, ... }:

{
  imports = [
    ./extensions.nix
  ];

  programs.vscode = {
    enable = true;
    mutableExtensionsDir = false;
    userSettings = (builtins.fromJSON (builtins.readFile ./settings.json));
    keybindings = (builtins.fromJSON (builtins.readFile ./keybindings.json));
  };
}
