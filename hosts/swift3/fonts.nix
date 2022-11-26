{pkgs, ...}: {
  fonts = {
    enableDefaultFonts = true;
    enableGhostscriptFonts = true;
    fonts = with pkgs; [
      cascadia-code
      corefonts
      vistafonts
    ];
  };
}
