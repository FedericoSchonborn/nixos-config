{pkgs, ...}: {
  programs.firefox.profiles.default = {
    name = "Default";

    search = {
      engines = {
        "NixOS Packages" = {
          urls = [
            {
              template = "https://search.nixos.org/packages";
              params = [
                {
                  name = "channel";
                  value = "unstable";
                }
                {
                  name = "query";
                  value = "{searchTerms}";
                }
              ];
            }
          ];
          icon = "${pkgs.nixos-icons}/share/icons/hicolor/scalable/apps/nix-snowflake.svg";
          definedAliases = ["@nixpkgs"];
        };

        "NixOS Options" = {
          urls = [
            {
              template = "https://search.nixos.org/options";
              params = [
                {
                  name = "channel";
                  value = "unstable";
                }
                {
                  name = "query";
                  value = "{searchTerms}";
                }
              ];
            }
          ];
          icon = "${pkgs.nixos-icons}/share/icons/hicolor/scalable/apps/nix-snowflake.svg";
          definedAliases = ["@nixopts"];
        };

        "NixOS Wiki" = {
          urls = [
            {
              template = "https://nixos.wiki/index.php";
              params = [
                {
                  name = "search";
                  value = "{searchTerms}";
                }
              ];
            }
          ];
          icon = "${pkgs.nixos-icons}/share/icons/hicolor/scalable/apps/nix-snowflake.svg";
          definedAliases = ["@nixwiki"];
        };
      };

      default = "Google";
    };

    settings = {
      # Show tabs in titlebar (CSD).
      "browser.tabs.inTitlebar" = 1;
      # Set search engine region to Argentina.
      "browser.search.region" = "AR";
      # Always show bookmarks toolbar.
      "browser.toolbars.bookmarks.visibility" = "always";
      # Disable Firefox Translations for English.
      "browser.translation.neverForLanguages" = "en";
      # Set locale to Spanish (Argentina), fallback to English (US).
      "intl.locale.requested" = "es-AR,en-US";
    };
  };
}
