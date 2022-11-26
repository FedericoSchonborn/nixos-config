{pkgs, ...}: {
  imports = [
    ./modules
    ./programs
    ./services
  ];

  home = {
    username = "federico";
    homeDirectory = "/home/federico";

    # Packages that should be installed to the user profile.
    packages = with pkgs; [
      # Development
      # Nix
      nil

      # Games
      prismlauncher
      retroarchFull

      # Graphics
      gimp
      inkscape

      # Internet
      discord
      element-desktop

      # Multimedia
      spotify

      # Office
      libreoffice-fresh

      # Utilities
      keepassxc
      neofetch

      # GNOME Extensions
      gnomeExtensions.appindicator
      gnomeExtensions.dash-to-panel
    ];
  };

  home.file.".cargo/config.toml".text = ''
    [build]
    rustc-wrapper = "${pkgs.sccache}/bin/sccache"

    [target.x86_64-unknown-linux-gnu]
    linker = "${pkgs.clang}/bin/clang"
    rustflags = ["-C", "link-arg=-fuse-ld=${pkgs.mold}/bin/mold"]
  '';

  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "23.05"; # Did you read the comment?
}
