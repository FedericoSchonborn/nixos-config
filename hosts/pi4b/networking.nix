{config, ...}: {
  networking = {
    hostName = "pi4b";
    firewall.allowedTCPPorts = [
      # Vaultwarden
      2839
    ];
  };
}
