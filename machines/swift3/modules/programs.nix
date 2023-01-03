{pkgs, ...}: {
  programs = {
    gamemode.enable = true;
    gnupg.agent.enable = true;
    kdeconnect.enable = true;
    ssh.startAgent = true;
    steam = {
      enable = true;
      remotePlay.openFirewall = true;
      dedicatedServer.openFirewall = true;
    };
  };
}
