{pkgs, ...}: {
  programs = {
    gamemode.enable = true;
    gnupg.agent = {
      enable = true;
      enableSSHSupport = true;
    };
    steam.enable = true;
  };
}
