{pkgs, ...}: {
  programs = {
    home-manager.enable = true;

    plasma = {
      enable = true;
      files = {
        kdeglobals = {
          General.ColorScheme = "BreezeDark";
          Icons.Theme = "breeze-dark";
          KDE.LookAndFeelPackage = "org.kde.breezedark.desktop";
        };

        kcminputrc = {
          Mouse.cursorTheme = "Breeze_Snow";
        };
      };
    };

    starship = {
      enable = true;
      enableZshIntegration = true;
    };

    zsh = {
      enable = true;
      enableAutosuggestions = true;
      enableCompletion = true;
      enableSyntaxHighlighting = true;
      historySubstringSearch.enable = true;
      initExtra = ''
        ${pkgs.neofetch}/bin/neofetch
      '';

      oh-my-zsh = {
        enable = true;
      };
    };
  };
}
