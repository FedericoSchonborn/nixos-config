{ pkgs, ... }:

{
  imports = [
    ../home.nix

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
}
