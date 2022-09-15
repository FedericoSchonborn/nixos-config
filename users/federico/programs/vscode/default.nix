{ pkgs, ... }:

let
  readJSON = path: builtins.fromJSON (builtins.readFile path);
in
{
  imports = [
    ./extensions.nix
  ];

  programs.vscode = {
    enable = true;
    mutableExtensionsDir = false;
    userSettings = readJSON ./settings.json;
    keybindings = readJSON ./keybindings.json;
  };
}
