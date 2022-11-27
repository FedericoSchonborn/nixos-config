{pkgs, ...}: {
  dconf.settings = {
    "org/gnome/shell" = {
      enabled-extensions = with pkgs.gnomeExtensions; [
        appindicator.extensionUuid
        dash-to-panel.extensionUuid
        gsconnect.extensionUuid
      ];
    };
  };
}
