{ pkgs, ... }:

{
  dconf.settings = {
    "org/gnome/settings/daemon/plugins/power".sleep-inactive-ac-type = "nothing";
    "org/gnome/system/location".enabled = true;
    "org/gnome/shell/weather".automatic-location = true;
    "org/gnome/desktop/datetime".automatic-timezone = true;

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
        dash-to-dock.extensionUuid
        desktop-icons-ng-ding.extensionUuid
      ];

      favorite-apps = [
        "org.gnome.Nautilus.desktop" # Files
        "firefox.desktop" # Firefox
        "org.gnome.Geary.desktop" # Geary
        "org.gnome.Calendar.desktop" # Calendar
        "bitwarden.desktop" # Bitwarden
        "discord.desktop" # Discord
        "element-desktop.desktop" # Element
        "telegramdesktop.desktop" # Telegram
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

    "org/gnome/shell/extensions/dash-to-dock" = {
      click-action = "minimize-or-previews";
      disable-overview-on-startup = true;
      height-fraction = 1;
      running-indicator-style = "DOTS";
      scroll-action = "cycle-windows";
      shift-middle-click-action = "quit";
      show-mounts = false;
      show-trash = false;
    };
  };
}
