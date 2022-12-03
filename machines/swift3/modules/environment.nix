{pkgs, ...}: {
  environment = {
    localBinInPath = true;

    gnome.excludePackages = with pkgs // pkgs.gnome; [
      epiphany
      gnome-music
      gnome-tour
      totem
    ];

    systemPackages = with pkgs; [
      # Multimedia
      amberol
      celluloid
      # Dictionaries
      aspellDicts.es
      hunspellDicts.es-ar
    ];
  };
}
