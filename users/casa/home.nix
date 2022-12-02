{
  config,
  pkgs,
  ...
}: {
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

  xdg = {
    enable = true;
    userDirs = {
      enable = true;
      createDirectories = true;
      desktop = "${config.home.homeDirectory}/Escritorio";
    };
  };

  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "23.05"; # Did you read the comment?
}
