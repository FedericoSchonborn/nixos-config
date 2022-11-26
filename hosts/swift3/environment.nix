{pkgs, ...}: {
  environment = {
    localBinInPath = true;

    systemPackages = with pkgs; [
      # Graphics
      plasma5Packages.kamoso
      skanlite

      # Multimedia
      vlc

      # Utilities
      ark
      kate

      # Dictionaries
      aspellDicts.es
      hunspellDicts.es-ar
    ];
  };
}
