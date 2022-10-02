{ pkgs, ... }:

{
  imports = [
    ./programs
    ./services
    ./xdg.nix
  ];

  home = {
    username = "federico";
    homeDirectory = "/home/federico";

    # Packages that should be installed to the user profile.
    packages = with pkgs; [
      (discord.overrideAttrs (old: rec {
        version = "0.0.20";
        src = fetchurl {
          url = "https://dl.discordapp.net/apps/linux/${version}/discord-${version}.tar.gz";
          sha256 = "3f7yuxigEF3e8qhCetCHKBtV4XUHsx/iYiaCCXjspYw=";
        };
      }))
      element-desktop
      firefox
      gimp
      inkscape
      keepassxc
      libreoffice-fresh
      minecraft
      spotify
      thunderbird
      rnix-lsp
      nixpkgs-fmt
    ];
  };

  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "22.11"; # Did you read the comment?
}
