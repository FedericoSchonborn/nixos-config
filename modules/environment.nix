{pkgs, ...}: {
  environment = {
    localBinInPath = true;
    pathsToLink = [
      # Zsh completions.
      "/share/zsh"
    ];

    systemPackages = with pkgs // pkgs.libsForQt5; [
      # Graphics
      kamoso
      skanlite

      # Multimedia
      vlc

      # Utilities
      ark
      kate

      # Other
      # Dictionaries
      aspellDicts.es
      hunspellDicts.es-ar
    ];
  };
}
