{
  services.xserver = {
    enable = true;
    desktopManager.xfce.enable = true;

    displayManager = {
      lightdm.enable = true;

      autoLogin = {
        enable = true;
        user = "casa";
      };
    };
  };
}
