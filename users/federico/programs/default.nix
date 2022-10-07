{
  imports = [
    ./direnv.nix
    ./gh.nix
    ./git.nix
    ./zsh.nix
  ];

  programs = {
    home-manager.enable = true;
    vscode.enable = true;
  };
}
