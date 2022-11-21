{
  imports = [
    ./direnv.nix
    ./gh.nix
    ./git.nix
    ./starship.nix
    ./vscode.nix
    ./zsh.nix
  ];

  programs.home-manager.enable = true;
}
