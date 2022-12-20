{pkgs, ...}: {
  environment = {
    localBinInPath = true;
    pathsToLink = ["/share/zsh"];

    systemPackages = with pkgs // pkgs.libsForQt5; [
      # Tools
      p7zip
      unzip
      unrar
      # Dictionaries
      aspellDicts.es
      hunspellDicts.es-ar
    ];
  };
}
