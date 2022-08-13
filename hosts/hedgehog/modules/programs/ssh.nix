{ pkgs, ... }:

{
  ssh = {
    askPassword = "${pkgs.ksshaskpass}/bin/ksshaskpass";
    startAgent = true;
  };
}
