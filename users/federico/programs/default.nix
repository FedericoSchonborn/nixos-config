{
  imports = [
    ./direnv.nix
    ./firefox
    ./gh.nix
    ./git.nix
    ./nix-index.nix
    ./starship.nix
    ./vscode
    ./zsh.nix
  ];

  programs.home-manager.enable = true;
}
