{pkgs, ...}: {
  imports = [
    ../../home-modules
  ];

  home = {
    username = "casa";
    homeDirectory = "/home/casa";

    packages = with pkgs; [
      # Internet
      google-chrome

      # Office
      libreoffice-fresh
    ];
  };
}
