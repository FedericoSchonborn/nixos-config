{pkgs, ...}: {
  programs = {
    gamemode.enable = true;
    gnupg.agent.enable = true;
    steam.enable = true;

    ssh = {
      startAgent = true;
      askPassword = "${pkgs.ksshaskpass}/bin/ksshaskpass";
    };
  };
}
