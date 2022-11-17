{pkgs, ...}: {
  programs.vscode = {
    enable = true;
    package = pkgs.vscodium;
    userSettings = {
      "editor.fontFamily" = "Cascadia Code";
      "editor.fontLigatures" = true;
      "editor.formatOnSave" = true;
      "editor.minimap.autohide" = true;
      "editor.minimap.renderCharacters" = false;
      "editor.multiCursorModifier" = "ctrlCmd";
      "editor.rulers" = [
        100
      ];
      "explorer.confirmDragAndDrop" = false;
      "files.insertFinalNewline" = true;
      "files.trimFinalNewlines" = true;
      "files.trimTrailingWhitespace" = true;
      "git.alwaysSignOff" = true;
      "git.enableCommitSigning" = true;
      "git.verboseCommit" = true;
      "terminal.integrated.smoothScrolling" = true;
      "window.menuBarVisibility" = "toggle";
      "window.titleBarStyle" = "custom";
      "workbench.colorTheme" = "Gruvbox Dark Medium";
      "workbench.iconTheme" = "file-icons";
      "workbench.preferredDarkColorTheme" = "Gruvbox Dark Medium";
      "workbench.preferredLightColorTheme" = "Gruvbox Light Medium";

      # Choose a License
      "license.author" = "Federico Damián Schonborn <fdschonborn@gmail.com>";
      "license.default" = "bsd-3-clause";

      # Rust Analyzer
      "rust-analyzer.checkOnSave.command" = "clippy";

      # Nix IDE
      "nix.enableLanguageServer" = true;
      "nix.serverPath" = "nil";
      "nix.serverSettings" = {
        nil.formatting.command = ["nix" "fmt" "--" "-"];
      };
    };
    keybindings = [
      {
        key = "ctrl+[Semicolon]";
        command = "workbench.action.terminal.toggleTerminal";
      }
    ];
    extensions = pkgs.vscode-utils.extensionsFromVscodeMarketplace [
      {
        publisher = "file-icons";
        name = "file-icons";
        version = "1.0.29";
        sha256 = "hknEJN0gxlf5brCBgsL5cwr/UC2bQhUU+npH5ZMrpBc=";
      }
      {
        publisher = "golang";
        name = "go";
        version = "0.36.0";
        sha256 = "XJ/vYibCeyfv1/zc2xAxdCblnoRUjcjM74/jhE4h0MA=";
      }
      {
        publisher = "jdinhlife";
        name = "gruvbox";
        version = "1.8.0";
        sha256 = "P4FbbcRcKWbnC86TSnzQaGn2gHWkDM9I4hj4GiHNPS4=";
      }
      {
        publisher = "jnoortheen";
        name = "nix-ide";
        version = "0.2.1";
        sha256 = "yC4ybThMFA2ncGhp8BYD7IrwYiDU3226hewsRvJYKy4=";
      }
      {
        publisher = "mkhl";
        name = "direnv";
        version = "0.7.0";
        sha256 = "MLBPhDBU8vPVvbde3fdwhxKvQa8orUMKAAXoOfNrbh4=";
      }
      {
        publisher = "ms-ceintl";
        name = "vscode-language-pack-es";
        version = "1.74.11100236";
        sha256 = "XE0mYAY93HE1b2oVKeXoT6l1+8NcuQkdg+aBR2sUcHs=";
      }
      {
        publisher = "rust-lang";
        name = "rust-analyzer";
        version = "0.4.1288";
        sha256 = "DYNO2Ok9sfk9SZOwOYQBFzGsTTBW2dpDzM1CNSJ8O2E=";
      }
    ];
  };
}
