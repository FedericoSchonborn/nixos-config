{pkgs, ...}: {
  dconf.settings = with pkgs; {
    "org/gnome/shell"."enabled-extensions" = [
      gnomeExtensions.appindicator.extensionUuid
      gnomeExtensions.gsconnect.extensionUuid
    ];
  };
}
