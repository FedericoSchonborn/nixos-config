{pkgs, ...}: {
  imports = [
    ../../home-modules
    ./modules
  ];

  home = {
    username = "federico";
    homeDirectory = "/home/federico";

    # Packages that should be installed to the user profile.
    packages = with pkgs; [
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
      bitwarden
      bitwarden-cli

      # CLI Tools
      neofetch
    ];
  };

  home.file.".cargo/config.toml".text = ''
    [build]
    rustc-wrapper = "${pkgs.sccache}/bin/sccache"

    [target.x86_64-unknown-linux-gnu]
    linker = "${pkgs.clang}/bin/clang"
    rustflags = ["-C", "link-arg=-fuse-ld=${pkgs.mold}/bin/mold"]
  '';
}
