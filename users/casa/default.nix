{
  users.users.casa = {
    description = "Casa";
    extraGroups = ["networkmanager" "wheel"];
    isNormalUser = true;
  };

  home-manager.users.casa = import ./home.nix;
}
