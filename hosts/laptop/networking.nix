{
  networking = {
    hostName = "laptop";

    networkmanager = {
      enable = true;
      wifi.backend = "iwd";
    };
  };
}
