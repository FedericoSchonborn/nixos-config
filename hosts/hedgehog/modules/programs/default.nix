{
  imports = [
    ./gnupg.nix
    ./steam.nix
    ./zsh.nix
  ];

  programs.command-not-found.enable = true;
  programs.gamemode.enable = true;
  programs.kdeconnect.enable = true;
}
