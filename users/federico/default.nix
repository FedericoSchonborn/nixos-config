{ config, pkgs, ... }:

{
  imports = [
    ./modules
  ];

  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home = {
    username = "federico";
    homeDirectory = "/home/federico";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  # Packages that should be installed to the user profile.
  home.packages = with pkgs;
    [
      bitwarden
      discord
      gimp
      inkscape
      element-desktop
      minecraft
      spotify
      tdesktop
      rnix-lsp
      nixpkgs-fmt
    ];

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
