{pkgs, ...}: {
  environment = {
    localBinInPath = true;

    gnome.excludePackages = with pkgs; [
      epiphany
    ];

    systemPackages = with pkgs; [
      # Dictionaries
      aspellDicts.es
      hunspellDicts.es-ar
    ];
  };
}
