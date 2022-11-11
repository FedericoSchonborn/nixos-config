{pkgs, ...}: {
  systemd.user.sessionVariables = {
    SSH_ASKPASS = "${pkgs.ksshaskpass}/bin/ksshaskpass";
    SSH_ASKPASS_REQUIRE = "prefer";
  };
}
