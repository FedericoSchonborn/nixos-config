{pkgs, ...}: {
  users.users.federico = {
    description = "Federico Damián";
    extraGroups = ["wheel" "networkmanager"];
    hashedPassword = "$6$YgbUGL5wzXfh.jwg$btIyhReMBUyPlAyX1nrSProUP.oanIYzefkblJMtfTIgUFHBFUzZkqRojomwUAskquMxbt5.Dkd3qAj8uAlg81";
    isNormalUser = true;
    shell = pkgs.zsh;
  };

  home-manager.users.federico = import ./home.nix;
}
