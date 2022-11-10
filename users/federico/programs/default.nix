{
  imports = [
    ./direnv.nix
    ./gh.nix
    ./git.nix
    ./starship.nix
    ./zsh.nix
  ];

  programs = {
    home-manager.enable = true;
    vscode.enable = true;
  };
}
