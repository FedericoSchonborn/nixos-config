{
  networking = {
    hostName = "swift";

    networkmanager = {
      enable = true;
      wifi.backend = "iwd";
    };
  };
}
