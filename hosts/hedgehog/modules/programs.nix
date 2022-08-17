{
  imports = [
    ./programs/gnupg.nix
    ./programs/steam.nix
    ./programs/zsh.nix
  ];

  programs = {
    command-not-found.enable = true;
    gamemode.enable = true;
  };
}
