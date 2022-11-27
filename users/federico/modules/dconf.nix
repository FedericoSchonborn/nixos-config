{pkgs, ...}: {
  dconf.settings = {
    "org/gnome/desktop/interface" = {
      color-scheme = "prefer-dark";
    };

    "org/gnome/shell" = {
      enabled-extensions = with pkgs.gnomeExtensions; [
        appindicator.extensionUuid
        bluetooth-quick-connect.extensionUuid
        blur-my-shell.extensionUuid
        dash-to-panel.extensionUuid
        desktop-icons-ng-ding.extensionUuid
        gsconnect.extensionUuid
      ];
    };
  };
}
