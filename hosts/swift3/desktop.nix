{pkgs, ...}: {
  services.xserver = {
    desktopManager.pantheon = {
      enable = true;
      extraWingpanelIndicators = with pkgs; [
        wingpanel-indicator-ayatana
      ];
    };

    displayManager.lightdm.greeters.pantheon.enable = true;
  };

  programs.pantheon-tweaks.enable = true;
  environment.pantheon.excludePackages = with pkgs; [
    epiphany
  ];
}
