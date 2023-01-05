{pkgs, ...}: {
  gtk = {
    enable = true;
    theme = {
      name = "Breeze";
      package = pkgs.breeze-gtk;
    };
    iconTheme = {
      name = "breeze";
      package = pkgs.breeze-icons;
    };
    cursorTheme = {
      name = "Beeze_Snow";
      package = pkgs.breeze-icons;
    };
    font = {
      name = "Noto Sans";
      size = 10;
      package = pkgs.noto-fonts;
    };
  };
}
