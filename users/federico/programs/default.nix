{
  imports = [
    ./direnv.nix
    ./firefox
    ./gh.nix
    ./git.nix
    ./starship.nix
    ./vscode
    ./zsh.nix
  ];

  programs.home-manager.enable = true;
}
