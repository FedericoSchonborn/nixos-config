{pkgs, ...}: {
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
    "workbench.colorTheme" = "Gruvbox Dark Medium";
    "workbench.iconTheme" = "file-icons";
    "workbench.preferredDarkColorTheme" = "Gruvbox Dark Medium";
    "workbench.preferredLightColorTheme" = "Gruvbox Light Medium";

    # Choose a License
    "license.author" = "Federico Damián Schonborn <fdschonborn@gmail.com>";
    "license.default" = "bsd-3-clause";
    # Nix IDE
    "nix.enableLanguageServer" = true;
    "nix.serverPath" = "${pkgs.nil}/bin/nil";
    "nix.serverSettings" = {
      nil.formatting.command = ["nix" "fmt" "--" "-"];
    };
    # Rust Analyzer
    "rust-analyzer.checkOnSave.command" = "clippy";
    "rust-analyzer.server.path" = "${pkgs.rust-analyzer}/bin/rust-analyzer";
    # Shellcheck
    "shellcheck.executablePath" = "${pkgs.shellcheck}/bin/shellcheck";
    # shfmt
    "shfmt.executablePath" = "${pkgs.shfmt}/bin/shfmt";
    # Vala
    "vala.languageServerPath" = "${pkgs.vala-language-server}/bin/vala-language-server";
  };
}
