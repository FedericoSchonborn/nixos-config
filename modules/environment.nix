{pkgs, ...}: {
  environment = {
    localBinInPath = true;
    pathsToLink = ["/share/zsh"];

    systemPackages = with pkgs // pkgs.libsForQt5; [
      # Dictionaries
      aspellDicts.es
      hunspellDicts.es-ar
    ];
  };
}
