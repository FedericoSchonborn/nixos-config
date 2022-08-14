{
  imports = [ ./gnupg.nix ./kdeconnect.nix ./steam.nix ./zsh.nix ];

  programs.command-not-found.enable = true;
  programs.gamemode.enable = true;
}
