{pkgs, ...}: {
  dconf.settings = {
    "org/gnome/settings/daemon/plugins/power".sleep-inactive-ac-type = "nothing";
    "org/gnome/system/location".enabled = true;
    "org/gnome/shell/weather".automatic-location = true;
    "org/gnome/desktop/datetime".automatic-timezone = true;
    "org/gnome/desktop/wm/preferences".button-layout = "appmenu:minimize,maximize,close";

    "org/gnome/desktop/privacy" = {
      remove-old-temp-files = true;
      remove-old-trash-files = true;
    };

    "org/gnome/settings/daemon/plugins/color" = {
      night-light-enabled = true;
      night-light-temperature = 3700;
      night-light-schedule-automatic = true;
    };

    "org/gnome/shell" = {
      enabled-extensions = with pkgs.gnomeExtensions; [
        appindicator.extensionUuid
        bluetooth-quick-connect.extensionUuid
        desktop-icons-ng-ding.extensionUuid
        dash-to-panel.extensionUuid
        sound-output-device-chooser.extensionUuid
      ];

      favorite-apps = [
        "org.gnome.Nautilus.desktop" # Files
        "firefox.desktop" # Firefox
        "org.gnome.Geary.desktop" # Geary
        "org.gnome.Calendar.desktop" # Calendar
        "bitwarden.desktop" # Bitwarden
        "discord.desktop" # Discord
        "element-desktop.desktop" # Element
        "spotify.desktop" # Spotify
        "steam.desktop" # Steam
        "minecraft-launcher.desktop" # Minecraft
        "code.desktop" # VS Code
        "org.gnome.Console.desktop" # Console
      ];
    };

    "org/gnome/shell/extensions/appindicator" = {
      icon-opacity = 255;
    };
  };
}
