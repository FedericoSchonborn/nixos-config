{pkgs, ...}: {
  users = {
    mutableUsers = false;

    users.federico = {
      description = "Federico Damián";
      extraGroups = ["networkmanager" "wheel"];
      hashedPassword = "$6$YgbUGL5wzXfh.jwg$btIyhReMBUyPlAyX1nrSProUP.oanIYzefkblJMtfTIgUFHBFUzZkqRojomwUAskquMxbt5.Dkd3qAj8uAlg81";
      isNormalUser = true;
      shell = pkgs.zsh;
    };
  };

  home-manager = {
    useGlobalPkgs = true;
    useUserPackages = true;
    users.federico = import ./home.nix;
  };
}
