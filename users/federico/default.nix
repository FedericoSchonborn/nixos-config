{config, ...}: {
  users.users.federico = {
    description = "Federico Damián";
    extraGroups = ["wheel" "networkmanager"];
    hashedPassword = "$6$YgbUGL5wzXfh.jwg$btIyhReMBUyPlAyX1nrSProUP.oanIYzefkblJMtfTIgUFHBFUzZkqRojomwUAskquMxbt5.Dkd3qAj8uAlg81";
    isNormalUser = true;
  };

  age.secrets = let
    homeDirectory = config.users.users.federico.home;
    mkSecret = attrs:
      attrs
      // {
        owner = "federico";
        group = "users";
      };
  in {
    cargo-credentials = mkSecret {
      file = ../../secrets/cargo-credentials.age;
      path = "${homeDirectory}/.cargo/credentials";
    };

    gh-hosts = mkSecret {
      file = ../../secrets/gh-hosts.age;
      path = "${homeDirectory}/.config/gh/hosts.yml";
    };
  };

  home-manager.users.federico = import ./home.nix;
}
