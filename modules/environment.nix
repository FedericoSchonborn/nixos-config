{pkgs, ...}: {
  environment = {
    localBinInPath = true;

    systemPackages = with pkgs // pkgs.plasma5Packages; [
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
