{pkgs, ...}: {
  dconf.settings = {
    "org/gnome/Console" = {
      theme = "auto";
    };

    "org/gnome/desktop/background" = {
      picture-uri = "file://${pkgs.nixos-artwork.wallpapers.nineish.gnomeFilePath}";
      picture-uri-dark = "file://${pkgs.nixos-artwork.wallpapers.nineish-dark-gray.gnomeFilePath}";
    };

    "org/gnome/desktop/datetime" = {
      automatic-timezone = true;
    };

    "org/gnome/desktop/interface" = {
      color-scheme = "prefer-dark";
      enable-hot-corners = false;
      show-battery-percentage = true;
    };

    "org/gnome/desktop/peripherals/touchpad" = {
      tap-to-click = true;
    };

    "org/gnome/desktop/privacy" = {
      remove-old-trash-files = true;
      remove-old-temp-files = true;
    };

    "org/gnome/desktop/wm/preferences" = {
      button-layout = "appmenu:minimize,maximize,close";
    };

    "org/gnome/settings-daemon/plugins/color" = {
      night-light-enabled = true;
    };

    "org/gnome/settings-daemon/plugins/power" = {
      sleep-inactive-ac-type = "nothing";
    };

    "org/gnome/shell" = {
      enabled-extensions = with pkgs.gnomeExtensions; [
        appindicator.extensionUuid
        bluetooth-quick-connect.extensionUuid
        dash-to-panel.extensionUuid
      ];
      favorite-apps = [
        "org.gnome.Nautilus.desktop"
        "firefox.desktop"
        "bitwarden.desktop"
        "org.gnome.Geary.desktop"
        "org.gnome.Calendar.desktop"
        "discord.desktop"
        "element-desktop.desktop"
        "spotify.desktop"
        "steam.desktop"
        "retroarch.desktop"
        "org.prismlauncher.PrismLauncher.desktop"
        "code.desktop"
        "org.gnome.Console.desktop"
      ];
    };

    "org/gnome/shell/extensions/appindicator" = {
      icon-opacity = true;
    };

    "org/gnome/shell/extensions/bluetooth-quick-connect" = {
      show-battery-value-on = true;
    };

    "org/gnome/shell/extensions/dash-to-panel" = {
      appicon-margin = 4;
      appicon-padding = 8;
      click-action = "TOGGLE-SHOWPREVIEW";
      dot-color-dominant = true;
      focus-highlight-dominant = true;
      hide-overview-on-startup = true;
      hot-keys = true;
      multi-monitors = false;
      overview-click-to-exit = true;
    };

    "org/gnome/shell/weather" = {
      automatic-location = true;
    };

    "org/gnome/system/location" = {
      enabled = true;
    };
  };
}
