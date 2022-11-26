{pkgs, ...}: {
  dconf.settings = {
    "/org/gnome/shell" = {
      enabled-extensions = with pkgs; [
        gnomeExtensions.appindicator.extensionUuid
        gnomeExtensions.gsconnect.extensionUuid
      ];
    };
  };
}
