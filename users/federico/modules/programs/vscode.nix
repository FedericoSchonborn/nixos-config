{ pkgs, ... }:

{
  programs.vscode = {
    enable = true;
    mutableExtensionsDir = false;

    userSettings = {
      "[markdown]" = {
        "editor.defaultFormatter" = "yzhang.markdown-all-in-one";
      };
      "cmake.configureOnOpen" = true;
      "cmake.generator" = "Ninja";
      "diffEditor.ignoreTrimWhitespace" = false;
      "editor.fontFamily" = "'Cascadia Code', 'Droid Sans Mono', monospace";
      "editor.fontLigatures" = true;
      "editor.formatOnSave" = true;
      "editor.minimap.renderCharacters" = false;
      "editor.renderWhitespace" = "trailing";
      "evenBetterToml.semanticTokens" = true;
      "explorer.confirmDragAndDrop" = false;
      "discord.suppressNotifications" = true;
      "files.associations" = { "LICENSE*" = "plaintext"; };
      "files.insertFinalNewline" = true;
      "files.trimFinalNewlines" = true;
      "files.trimTrailingWhitespace" = true;
      "git.alwaysSignOff" = true;
      "git.autofetch" = true;
      "git.confirmSync" = false;
      "git.enableCommitSigning" = true;
      "git.fetchOnPull" = true;
      "git.showCommitInput" = false;
      "git.showPushSuccessNotification" = true;
      "git.supportCancellation" = true;
      "git.timeline.showUncommitted" = true;
      "git.verboseCommit" = true;
      "github.gitProtocol" = "ssh";
      "go.inlayHints.assignVariableTypes" = true;
      "go.inlayHints.compositeLiteralFields" = true;
      "go.inlayHints.compositeLiteralTypes" = true;
      "go.inlayHints.constantValues" = true;
      "go.inlayHints.functionTypeParameters" = true;
      "go.inlayHints.parameterNames" = true;
      "go.inlayHints.rangeVariableTypes" = true;
      "go.lintTool" = "golangci-lint";
      "go.toolsManagement.autoUpdate" = true;
      "gopls" = {
        "formatting.gofumpt" = true;
        "ui.semanticTokens" = true;
      };
      "license.author" = "Federico Damián Schonborn <fdschonborn@gmail.com>";
      "license.default" = "bsd-3-clause";
      "license.extension" = "";
      "license.year" = "auto";
      "nix.enableLanguageServer" = true;
      "redhat.telemetry.enabled" = true;
      "remote.containers.dockerComposePath" = "podman-compose";
      "remote.containers.dockerPath" = "podman";
      "rust-analyzer.checkOnSave.command" = "clippy";
      "rust-analyzer.imports.prefix" = "crate";
      "terminal.integrated.shellIntegration.enabled" = false;
      "window.autoDetectColorScheme" = true;
      "window.commandCenter" = true;
      "window.titleBarStyle" = "custom";
      "workbench.colorTheme" = "Gruvbox Light Medium";
      "workbench.iconTheme" = "file-icons";
      "workbench.preferredDarkColorTheme" = "Gruvbox Dark Medium";
      "workbench.preferredLightColorTheme" = "Gruvbox Light Medium";
    };

    keybindings = [
      # View: Toggle Terminal
      {
        key = "ctrl+[Semicolon]"; # Ctrl+Ñ
        command = "workbench.action.terminal.toggleTerminal";
      }
    ];

    extensions = with pkgs.vscode-extensions;
      [
        arrterian.nix-env-selector # Nix Env Selector
        bierner.emojisense # :emojisense:
        bierner.markdown-checkbox # Markdown Checkboxes
        bierner.markdown-emoji # Markdown Emoji
        bierner.markdown-mermaid # Markdown Preview Mermaid Support
        christian-kohler.path-intellisense # Path Intellisense
        davidanson.vscode-markdownlint # markdownlint
        file-icons.file-icons # file-icons (file-icons)
        github.vscode-pull-request-github # GitHub Pull Requests and Issues
        golang.go # Go
        gruntfuggly.todo-tree # Todo Tree
        jdinhlife.gruvbox # Gruvbox Theme
        jnoortheen.nix-ide # Nix IDE
        ms-azuretools.vscode-docker # Docker
        ms-ceintl.vscode-language-pack-es # Spanish Language Pack
        ms-vscode-remote.remote-ssh # Remote - SSH
        redhat.vscode-yaml # YAML
        rust-lang.rust-analyzer # Rust Analyzer
        serayuzgur.crates # crates
        streetsidesoftware.code-spell-checker # Code Spell Checker
        tamasfe.even-better-toml # Even Better TOML
        timonwong.shellcheck # ShellCheck
        yzhang.markdown-all-in-one # Markdown All in One
      ] ++ pkgs.vscode-utils.extensionsFromVscodeMarketplace [
        {
          # Choose A License
          name = "vscode-choosealicense";
          publisher = "ultram4rine";
          version = "0.8.0";
          sha256 = "iZFpBRHM6jpJtgbOQN06Hqiudf+eruDInx3KwKN9jI8=";
        }
        {
          # Discord Presence
          name = "discord-vscode";
          publisher = "icrawl";
          version = "5.8.0";
          sha256 = "IU/looiu6tluAp8u6MeSNCd7B8SSMZ6CEZ64mMsTNmU=";
        }
        {
          # Remote - SSH: Edition Configuration Files
          name = "remote-ssh-edit";
          publisher = "ms-vscode-remote";
          version = "0.80.0";
          sha256 = "2rAIZnzVSU1J3wsNJ3wW9Bnqh4IgSmYCGfn2BJJo+X0=";
        }
        {
          # Remote - Containers
          name = "remote-containers";
          publisher = "ms-vscode-remote";
          version = "0.245.0";
          sha256 = "j+68VfycQDtcv2MP5ZJjjHuAV8sC24VimUIDB7KwJkI=";
        }
        {
          # Markdown Footnotes
          name = "markdown-footnotes";
          publisher = "bierner";
          version = "0.0.7";
          sha256 = "hbnC+4M4KKku0uHjp25TGnD3gz10kGaTjLckqtDT2Mw=";
        }
        {
          # Markdown yaml Preamble
          name = "markdown-yaml-preamble";
          publisher = "bierner";
          version = "0.1.0";
          sha256 = "5eIrLbkHz73JStqaIqoNXWXWA8A2dEVFulp4nXczi/Y=";
        }
        {
          # .gitignore Generator
          name = "vscode-gitignore-generator";
          publisher = "piotrpalarz";
          version = "1.0.3";
          sha256 = "eqNjkoXXkcbtMDr2ndThqQ2qRFPw1ucQi6hv0eCBw3k=";
        }
        {
          # direnv
          name = "direnv";
          publisher = "mkhl";
          version = "0.6.1";
          sha256 = "5/Tqpn/7byl+z2ATflgKV1+rhdqj+XMEZNbGwDmGwLQ=";
        }
        {
          # nix-develop
          name = "nix-develop";
          publisher = "jamesottaway";
          version = "0.0.1";
          sha256 = "ldD907spPCgHQ10XphaRAbgkNcYdzACqUOr2Cf5o8zU=";
        }
      ];
  };
}
