{pkgs, ...}: {
  fonts = {
    enableDefaultFonts = true;
    enableGhostscriptFonts = true;
    fonts = with pkgs; [
      (nerdfonts.override {
        fonts = ["JetBrainsMono"];
      })
      corefonts
      vistafonts
    ];
  };
}
