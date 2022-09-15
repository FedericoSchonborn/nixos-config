{ pkgs, ... }:

{
  programs.vscode.extensions = with pkgs.vscode-extensions;
    [
      streetsidesoftware.code-spell-checker # Code Spell Checker
      serayuzgur.crates # crates
      mkhl.direnv # direnv
      bierner.emojisense # :emojisense:
      tamasfe.even-better-toml # Even Better TOML
      file-icons.file-icons # file-icons (file-icons)
      golang.go # Go
      jdinhlife.gruvbox # Gruvbox Theme
      yzhang.markdown-all-in-one # Markdown All in One
      bierner.markdown-checkbox # Markdown Checkboxes
      bierner.markdown-emoji # Markdown Emoji
      jnoortheen.nix-ide # Nix IDE
      christian-kohler.path-intellisense # Path Intellisense
      ms-vscode-remote.remote-ssh # Remote - SSH
      matklad.rust-analyzer # Rust Analyzer
      timonwong.shellcheck # ShellCheck
      gruntfuggly.todo-tree # Todo Tree
      ms-azuretools.vscode-docker # Docker
      ms-ceintl.vscode-language-pack-es # Spanish Language Pack for Visual Studio Code
      davidanson.vscode-markdownlint # markdownlint
      github.vscode-pull-request-github # GitHub Pull Requests and Issues
      redhat.vscode-yaml # YAML
    ]
    ++ pkgs.vscode-utils.extensionsFromVscodeMarketplace [
      {
        # Spanish - Code Spell Checker
        name = "code-spell-checker-spanish";
        publisher = "streetsidesoftware";
        version = "2.1.2";
        sha256 = "36odsJkyeiCi9Be7vXL9vMop3TKxmRj2hVML+yFuC7U=";
      }
      {
        # Discord Presence
        name = "discord-vscode";
        publisher = "icrawl";
        version = "5.8.0";
        sha256 = "IU/looiu6tluAp8u6MeSNCd7B8SSMZ6CEZ64mMsTNmU=";
      }
      {
        # nix-develop
        name = "nix-develop";
        publisher = "jamesottaway";
        version = "0.0.1";
        sha256 = "ldD907spPCgHQ10XphaRAbgkNcYdzACqUOr2Cf5o8zU=";
      }
      {
        # GitHub Repositories
        name = "remotehub";
        publisher = "github";
        version = "0.42.0";
        sha256 = "zHwuxr21pZgD4Mo1v1eE0be6X5yy/fGMlV7SKhwwcPk=";
      }
      {
        # Remote - Containers
        name = "remote-containers";
        publisher = "ms-vscode-remote";
        version = "0.245.0";
        sha256 = "j+68VfycQDtcv2MP5ZJjjHuAV8sC24VimUIDB7KwJkI=";
      }
      {
        # Remote Repositories
        name = "remote-repositories";
        publisher = "ms-vscode";
        version = "0.20.0";
        sha256 = "ugwqBGK0Ee7T3VJsVHDA8cLzks0uvDQHLPw5Fvf7tOM=";
      }
      {
        # Remote - SSH: Edit Configuration Files
        name = "remote-ssh-edit";
        publisher = "ms-vscode-remote";
        version = "0.80.0";
        sha256 = "2rAIZnzVSU1J3wsNJ3wW9Bnqh4IgSmYCGfn2BJJo+X0=";
      }
      {
        # Choose A License
        name = "vscode-choosealicense";
        publisher = "ultram4rine";
        version = "0.8.0";
        sha256 = "iZFpBRHM6jpJtgbOQN06Hqiudf+eruDInx3KwKN9jI8=";
      }
      {
        # .gitignore Generator
        name = "vscode-gitignore-generator";
        publisher = "piotrpalarz";
        version = "1.0.3";
        sha256 = "eqNjkoXXkcbtMDr2ndThqQ2qRFPw1ucQi6hv0eCBw3k=";
      }
    ];
}
