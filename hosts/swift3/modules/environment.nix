{pkgs, ...}: {
  environment = {
    localBinInPath = true;

    gnome.excludePackages = with pkgs;
    with pkgs.gnome; [
      epiphany
      gnome-music
    ];

    systemPackages = with pkgs; [
      # Multimedia
      amberol
      # Dictionaries
      aspellDicts.es
      hunspellDicts.es-ar
    ];
  };
}
