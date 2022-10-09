{config, ...}: {
  networking = {
    hostName = "pi4b";
    firewall.allowedTCPPorts = [
      # Vaultwarden
      2839
    ];

    wireless = {
      enable = true;
      environmentFile = config.age.secrets.wireless.path;
      networks."Telecentro-d160".psk = "@TELECENTRO_D160_PSK@";
      interfaces = ["wlan0"];
    };
  };
}
