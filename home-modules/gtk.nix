{pkgs, ...}: {
  gtk = {
    enable = true;
    theme = {
      name = "Breeze";
      package = pkgs.breeze-gtk;
    };
    iconTheme = {
      name = "Breeze";
      package = pkgs.breeze-icons;
    };
  };
}
