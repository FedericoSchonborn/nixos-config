{
  imports = [ ./gnupg.nix ./steam.nix ./zsh.nix ];

  programs = {
    command-not-found.enable = true;
    gamemode.enable = true;
  };
}
