{
  imports = [
    ./extensions.nix
    ./keybindings.nix
    ./settings.nix
  ];

  programs.vscode = {
    enable = true;
    enableUpdateCheck = false;
    mutableExtensionsDir = true;
  };
}
