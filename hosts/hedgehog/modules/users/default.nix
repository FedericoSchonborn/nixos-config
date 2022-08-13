{ pkgs, ... }:

{
  users = {
    defaultUserShell = pkgs.zsh;
    users.federico = {
      isNormalUser = true;
      description = "Federico Damián";
      extraGroups = [ "networkmanager" "wheel" ];
    };
  };

  home-manager = {
    useGlobalPkgs = true;
    useUserPackages = true;
    users.federico = import ../../../../users/federico;
  };
}
