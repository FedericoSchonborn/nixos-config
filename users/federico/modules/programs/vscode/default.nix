{
  imports = [
    ./extensions.nix
    ./keybindings.nix
    ./settings.nix
  ];

  programs.vscode = {
    enable = true;
    enableUpdateCheck = false;
    # Workaround for nix-community/home-manager#3507
    mutableExtensionsDir = true;
  };
}
