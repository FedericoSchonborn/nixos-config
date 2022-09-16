{
  networking = {
    hostName = "swift3";

    networkmanager = {
      enable = true;
      wifi.backend = "iwd";
    };
  };
}
