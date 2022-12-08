{
  programs.vscode.userSettings = {
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
    "files.associations" = {
      ".envrc" = "shellscript";
    };
    "files.insertFinalNewline" = true;
    "files.trimFinalNewlines" = true;
    "files.trimTrailingWhitespace" = true;
    "git.alwaysSignOff" = true;
    "git.enableCommitSigning" = true;
    "git.verboseCommit" = true;
    "terminal.integrated.smoothScrolling" = true;
    "terminal.integrated.tabs.location" = "left";
    "window.menuBarVisibility" = "toggle";
    "window.titleBarStyle" = "custom";
    "workbench.colorTheme" = "Gruvbox Light Medium";
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
}
