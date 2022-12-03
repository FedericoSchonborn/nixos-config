{
  config,
  pkgs,
  ...
}: {
  imports = [
    ../../home-modules
  ];

  home = {
    username = "casa";
    homeDirectory = "/home/casa";

    packages = with pkgs; [
      google-chrome
      libreoffice-fresh
    ];
  };

  home.file."google-chrome.desktop" = {
    source = "${pkgs.google-chrome}/share/applications/google-chrome.desktop";
    target = "${config.xdg.userDirs.desktop}/google-chrome.desktop";
    executable = true;
  };
}
