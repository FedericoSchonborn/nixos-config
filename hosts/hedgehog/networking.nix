{
  networking = {
    hostName = "hedgehog";

    networkmanager = {
      enable = true;
      wifi.backend = "iwd";
    };
  };
}
