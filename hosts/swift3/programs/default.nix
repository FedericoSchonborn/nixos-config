{
  imports = [
    ./gnupg.nix
    ./steam.nix
  ];

  programs = {
    command-not-found.enable = true;
    gamemode.enable = true;
  };
}
