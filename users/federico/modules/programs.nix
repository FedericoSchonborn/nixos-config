{
  imports = [
    ./programs/direnv.nix
    ./programs/gh.nix
    ./programs/git.nix
    ./programs/vscode.nix
  ];

  programs.bash.enable = true;
  programs.home-manager.enable = true;
}
