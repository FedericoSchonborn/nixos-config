{
  imports = [
    ./steam.nix
  ];

  programs = {
    command-not-found.enable = true;
    gamemode.enable = true;
    gnupg.agent.enable = true;
  };
}
