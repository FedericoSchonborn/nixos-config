{pkgs, ...}: {
  environment = {
    localBinInPath = true;
    pathsToLink = [
      # Zsh completions.
      "/share/zsh"
    ];

    gnome.excludePackages = with pkgs // pkgs.gnome; [
      # Replaced by Firefox and Google Chrome.
      epiphany
      # Replaced by Amberol.
      gnome-music
      # Replaced by Clapper.
      totem
    ];

    systemPackages = with pkgs // pkgs.libsForQt5; [
      # Multimedia
      amberol
      clapper

      # Other
      # Dictionaries
      aspellDicts.es
      hunspellDicts.es-ar
    ];
  };
}
