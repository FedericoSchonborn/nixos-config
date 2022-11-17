{
  imports = [
    ./dconf.nix
    ./direnv.nix
    ./gh.nix
    ./git.nix
    ./gtk.nix
    ./starship.nix
    ./vscode.nix
    ./zsh.nix
  ];

  programs.home-manager.enable = true;
}
