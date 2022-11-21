{
  imports = [
    ./direnv.nix
    ./gh.nix
    ./git.nix
    ./neovim.nix
    ./starship.nix
    ./zsh.nix
  ];

  programs.home-manager.enable = true;
}
