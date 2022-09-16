{ pkgs, ... }:

{
  imports = [
    ../home.nix
  ];

  home = {
    username = "casa";
    homeDirectory = "/home/casa";

    packages = with pkgs; [
      google-chrome
    ];
  };
}
