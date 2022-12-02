{pkgs, ...}: {
  services.xserver = {
    enable = true;

    desktopManager.budgie = {
      enable = true;
      extraGSettingsOverrides = ''
        [org.buddiesofbudgie.budgie-desktop-view]
        show=true
        click-policy="double"
      '';
      extraGSettingsOverridePackages = with pkgs; [
        budgie.budgie-desktop-view
      ];
    };

    displayManager = {
      lightdm.greeters.slick.enable = true;

      autoLogin = {
        enable = true;
        user = "casa";
      };
    };
  };
}
