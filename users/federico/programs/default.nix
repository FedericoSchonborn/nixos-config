{
  imports = [
    ./direnv.nix
    ./gh.nix
    ./git.nix
    ./vscode
    ./zsh.nix
  ];

  programs.home-manager.enable = true;
}
