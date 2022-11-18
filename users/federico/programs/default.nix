{
  imports = [
    ./dconf.nix
    ./direnv.nix
    ./gh.nix
    ./git.nix
    ./gtk.nix
    ./neovim.nix
    ./starship.nix
    ./vscode.nix
    ./zsh.nix
  ];

  programs.home-manager.enable = true;
}
