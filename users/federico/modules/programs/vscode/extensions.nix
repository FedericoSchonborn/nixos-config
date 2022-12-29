{
  lib,
  pkgs,
  ...
}: let
  mkExtension = id: version: sha256: let
    parts = lib.strings.splitString "." id;
    publisher = builtins.elemAt parts 0;
    name = builtins.elemAt parts 1;
  in {
    inherit name publisher version sha256;
  };
in {
  programs.vscode.extensions = pkgs.vscode-utils.extensionsFromVscodeMarketplace [
    (mkExtension "arrterian.nix-env-selector" "1.0.9" "sha256-TkxqWZ8X+PAonzeXQ+sI9WI+XlqUHll7YyM7N9uErk0=")
    (mkExtension "bierner.emojisense" "0.9.1" "sha256-bfhImi2qMHWkgKqkoStS0NtbXTfj6GpcLkI0PSMjuvg=")
    (mkExtension "bierner.markdown-checkbox" "0.4.0" "sha256-AoPcdN/67WOzarnF+GIx/nans38Jan8Z5D0StBWIbkk=")
    (mkExtension "bierner.markdown-emoji" "0.3.0" "sha256-rw8/HeDA8kQuiPVDpeOGw1Mscd6vn4utw1Qznsd8lVI=")
    (mkExtension "bierner.markdown-footnotes" "0.1.1" "sha256-h/Iyk8CKFr0M5ULXbEbjFsqplnlN7F+ZvnUTy1An5t4=")
    (mkExtension "bierner.markdown-mermaid" "1.17.3" "sha256-7aU8t21TeBdvnlOCuGmMQdjHTRVI+51loR6KtLqubyM=")
    (mkExtension "bierner.markdown-preview-github-styles" "1.0.1" "sha256-UhWbygrGh0whVxfGcEa+hunrTG/gfHpXYii0E7YhXa4=")
    (mkExtension "bierner.markdown-yaml-preamble" "0.1.0" "sha256-5eIrLbkHz73JStqaIqoNXWXWA8A2dEVFulp4nXczi/Y=")
    (mkExtension "christian-kohler.path-intellisense" "2.8.4" "sha256-FEBYcjJHOwmxVHhhyxqOpk/V6hvtMkhkvLVpmJCMSZw=")
    (mkExtension "davidanson.vscode-markdownlint" "0.48.1" "sha256-3TpZGvas+pfabHayaA6Yd9nOO2MbfXbCvCiTcbja9Vo=")
    (mkExtension "donjayamanne.githistory" "0.6.19" "sha256-YyEr4XRI2zzkzDXX2oS+jVnm5dggoZcS4Vc8mNSuQpc=")
    (mkExtension "editorconfig.editorconfig" "0.16.4" "sha256-j+P2oprpH0rzqI0VKt0JbZG19EDE7e7+kAb3MGGCRDk=")
    (mkExtension "file-icons.file-icons" "1.0.29" "sha256-hknEJN0gxlf5brCBgsL5cwr/UC2bQhUU+npH5ZMrpBc=")
    (mkExtension "github.remotehub" "0.48.0" "sha256-fILp2453bFp2wooBYZKRouKp23DRV0s1PB8PEBMe+hE=")
    (mkExtension "github.vscode-pull-request-github" "0.56.0" "sha256-NJRHWH2bJLqjyWFIj3FTzGh/3LtiXjsVcBCMzbhtH1g=")
    (mkExtension "golang.go" "0.37.0" "sha256-QsB/eCVoyCOsSFrJ5jpECyCWPAbDffZ7HtWudvd1sSM=")
    (mkExtension "gruntfuggly.todo-tree" "0.0.220" "sha256-U7aY2/ESz9f8foBjydy1G/bWd7CLNyIjDWE3pytZfxo=")
    (mkExtension "jdinhlife.gruvbox" "1.8.0" "sha256-P4FbbcRcKWbnC86TSnzQaGn2gHWkDM9I4hj4GiHNPS4=")
    (mkExtension "jnoortheen.nix-ide" "0.2.1" "sha256-yC4ybThMFA2ncGhp8BYD7IrwYiDU3226hewsRvJYKy4=")
    (mkExtension "mesonbuild.mesonbuild" "1.7.1" "sha256-odLTcgF+qkMwu53lr35tezvFnptox0MGl9n4pZ10JZo=")
    (mkExtension "mkhl.direnv" "0.10.1" "sha256-Da9Anme6eoKLlkdYaeLFDXx0aQgrtepuUnw2jEPXCVU=")
    (mkExtension "mkhl.shfmt" "1.2.0" "sha256-jgKJz6FQt6jBsiDQCKYnEuWhHg+9zD0P+GOMYTt1ZZA=")
    (mkExtension "ms-azuretools.vscode-docker" "1.23.3" "sha256-0qflugzWA1pV0PVWGTzOjdxM/0G8hTLOozoXCAdQnRY=")
    (mkExtension "ms-ceintl.vscode-language-pack-es" "1.74.12140936" "sha256-IVr6o+zldepQNCgLL1tVsLIMpxJgLx24Abqq6pJTUAU=")
    (mkExtension "ms-vscode-remote.remote-containers" "0.266.1" "sha256-D0nwLKGojvvRuviGRI9zo4SZmpZgee7ZpHLWjUK3LWA=")
    (mkExtension "ms-vscode-remote.remote-ssh-edit" "0.84.0" "sha256-33jHWC8K0TWJG54m6FqnYEotKqNxkcd/D14TFz6dgmc=")
    (mkExtension "ms-vscode-remote.remote-ssh" "0.94.0" "sha256-1lFb/KWANFRSFE4lMsJTjSrMmMdrx/UiyUAmmBGYfec=")
    (mkExtension "ms-vscode.hexeditor" "1.9.9" "sha256-azUd4e1AHpPMhb+nXRqTzb3W/Z0RvZLn/fSa+ihN63A=")
    (mkExtension "ms-vscode.remote-explorer" "0.0.3" "sha256-m4/MCudWY3ESP0rk18DKPHn965CGYI2h6vFjJUAvVAE=")
    (mkExtension "ms-vscode.remote-repositories" "0.26.0" "sha256-T55AniLdUQ0zZEn96xx3WXq8q5h9JH0eAPH17zADiqA=")
    (mkExtension "pdesaulniers.vscode-teal" "0.8.3" "sha256-yI6bkPN84AwcCtWCUwn+aCXI8u0DhnnZvAl6T4dqefE=")
    (mkExtension "piotrpalarz.vscode-gitignore-generator" "1.0.3" "sha256-eqNjkoXXkcbtMDr2ndThqQ2qRFPw1ucQi6hv0eCBw3k=")
    (mkExtension "prince781.vala" "1.0.8" "sha256-IuIb7vLNiE3rzVHOsjInaYLzNYORbwabQq0bfaPLlqc=")
    (mkExtension "redhat.vscode-yaml" "1.10.1" "sha256-BZHU9FrFqsO09fllMF3+vszrGnPrfQmhVgpcNQhPv/w=")
    (mkExtension "rust-lang.rust-analyzer" "0.3.1325" "sha256-V8ZklV2yHtsLgKY4DU+QzZMMkFdokSoP8tC9A40qeGA=")
    (mkExtension "sclu1034.justfile" "2.1.0" "sha256-Gjc9tYwdJ0it/7LYpekh3Bz2lwJd9y4iMpZlVZ2VpDQ=")
    (mkExtension "streetsidesoftware.code-spell-checker" "2.12.0" "sha256-Dhd0QVWdCCvdGKuu8OB4KrBS0XUHWLzRSyreAf7sGLU=")
    (mkExtension "sumneko.lua" "3.6.4" "sha256-/JZqls/+aBzGuQPp+LuderM7/H932U9gYA6p5IcSSdA=")
    (mkExtension "tamasfe.even-better-toml" "0.19.0" "sha256-MqSQarNThbEf1wHDTf1yA46JMhWJN46b08c7tV6+1nU=")
    (mkExtension "timonwong.shellcheck" "0.29.2" "sha256-mb3f8ER9NMuQVOUrdifOFULiLWAfW+xZvaW0nXUZmpc=")
    (mkExtension "ultram4rine.vscode-choosealicense" "0.9.0" "sha256-m60comJWcMEtWzf4y5o33/4I0nGiko4pXHC7YufoKY0=")
    (mkExtension "usernamehw.errorlens" "3.6.0" "sha256-oNzB81mPZjEwrqbeFMvTlXERXrYBpF03EH9ZXz/daOs=")
    (mkExtension "wmaurer.change-case" "1.0.0" "sha256-tN/jlG2PzuiCeERpgQvdqDoa3UgrUaM7fKHv6KFqujc=")
    (mkExtension "yzhang.markdown-all-in-one" "3.5.0" "sha256-q2DdFc7Q4MYr03+mDyMtYr3+5Fy4oPq7c69LIkTZz8I=")
  ];
}
