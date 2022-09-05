{
  imports = [
    ./direnv.nix
    ./gh.nix
    ./git.nix
    ./vscode
  ];

  programs.bash.enable = true;
  programs.home-manager.enable = true;
}
