{pkgs, ...}: {
  environment = {
    localBinInPath = true;

    systemPackages = with pkgs // pkgs.libsForQt5; [
      # Graphics
      kamoso
      skanlite

      # Multimedia
      vlc

      # System
      yakuake

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
