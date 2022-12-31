{pkgs, ...}: {
  programs = {
    gamemode.enable = true;
    gnupg.agent.enable = true;
    steam = {
      enable = true;
      remotePlay.openFirewall = true;
      dedicatedServer.openFirewall = true;
    };
    ssh.startAgent = true;
  };
}
