{
  pkgs,
  inputs,
  ...
}: {
  imports = [
    ./programs
    ./services
  ];

  home = {
    username = "federico";
    homeDirectory = "/home/federico";

    # Packages that should be installed to the user profile.
    packages = with pkgs; [
      # Games
      prismlauncher
      # Graphics
      gimp
      inkscape
      # Internet
      discord
      firefox-wayland
      element-desktop
      # Multimedia
      spotify
      # Office
      libreoffice-fresh
      # Utilities
      keepassxc

      # Nix
      nil
    ];
  };

  nixpkgs.overlays = [
    inputs.nil.overlays.default
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
