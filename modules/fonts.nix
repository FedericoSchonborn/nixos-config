{pkgs, ...}: {
  fonts = {
    enableDefaultFonts = true;
    enableGhostscriptFonts = true;
    fonts = with pkgs; [
      corefonts
      vistafonts
    ];
  };
}
