{
  imports = [
    ./direnv.nix
    ./gh.nix
    ./git.nix
    ./neovim
    ./starship.nix
    ./zsh.nix
  ];

  programs.home-manager.enable = true;
}
