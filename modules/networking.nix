{config, ...}: {
  networking = {
    networkmanager = {
      enable = true;
      wifi.backend = "iwd";
    };

    wireless = {
      environmentFile = config.age.secrets.wireless-env.path;
      networks = {
        "Telecentro-d160" = {
          psk = "@PSK_TELECENTRO_D160@";
        };
      };
    };
  };
}
