{config, ...}: {
  users.users.federico = {
    description = "Federico Damián";
    extraGroups = ["wheel" "networkmanager"];
    hashedPassword = "$6$YgbUGL5wzXfh.jwg$btIyhReMBUyPlAyX1nrSProUP.oanIYzefkblJMtfTIgUFHBFUzZkqRojomwUAskquMxbt5.Dkd3qAj8uAlg81";
    isNormalUser = true;
  };

  age.secrets = let
    homeDirectory = config.users.users.federico.home;
  in {
    cargo-credentials = {
      file = ../../secrets/cargo-credentials.age;
      path = "${homeDirectory}/.cargo/credentials";
      owner = "federico";
      group = "users";
      mode = "0400";
    };

    gh-hosts = {
      file = ../../secrets/gh-hosts.age;
      path = "${homeDirectory}/.config/gh/hosts.yml";
      owner = "federico";
      group = "users";
      mode = "0400";
    };
  };

  home-manager.users.federico = import ./home.nix;
}
