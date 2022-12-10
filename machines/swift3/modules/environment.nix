{pkgs, ...}: {
  environment = {
    pathsToLink = ["/share/zsh"];

    variables = {
      GIT_ASKPASS = "${pkgs.ksshaskpass}/bin/ksshaskpass";
      SSH_ASKPASS_REQUIRE = "prefer";
    };
  };
}
