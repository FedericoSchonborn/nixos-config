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
      discord
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
