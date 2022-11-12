{pkgs, ...}: {
  programs.ssh = {
    startAgent = true;
    askPassword = "${pkgs.ksshaskpass}/bin/ksshaskpass";
  };
}
