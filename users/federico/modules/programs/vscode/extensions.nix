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
    (mkExtension "bierner.emojisense" "0.9.1" "bfhImi2qMHWkgKqkoStS0NtbXTfj6GpcLkI0PSMjuvg=")
    (mkExtension "bierner.markdown-checkbox" "0.4.0" "AoPcdN/67WOzarnF+GIx/nans38Jan8Z5D0StBWIbkk=")
    (mkExtension "bierner.markdown-emoji" "0.3.0" "rw8/HeDA8kQuiPVDpeOGw1Mscd6vn4utw1Qznsd8lVI=")
    (mkExtension "bierner.markdown-footnotes" "0.1.1" "h/Iyk8CKFr0M5ULXbEbjFsqplnlN7F+ZvnUTy1An5t4=")
    (mkExtension "bierner.markdown-mermaid" "1.15.2" "qCadlrdQjBNZXneYBDARPqKSOoL8v9VRsf2LHbcrAXM=")
    (mkExtension "bierner.markdown-preview-github-styles" "1.0.1" "UhWbygrGh0whVxfGcEa+hunrTG/gfHpXYii0E7YhXa4=")
    (mkExtension "bierner.markdown-yaml-preamble" "0.1.0" "5eIrLbkHz73JStqaIqoNXWXWA8A2dEVFulp4nXczi/Y=")
    (mkExtension "christian-kohler.path-intellisense" "2.8.3" "AUpbQs2jDYyT1YfBG61KsV6oivhf9DDbHWLnNDveoC8=")
    (mkExtension "davidanson.vscode-markdownlint" "0.48.1" "3TpZGvas+pfabHayaA6Yd9nOO2MbfXbCvCiTcbja9Vo=")
    (mkExtension "donjayamanne.githistory" "0.6.19" "YyEr4XRI2zzkzDXX2oS+jVnm5dggoZcS4Vc8mNSuQpc=")
    (mkExtension "file-icons.file-icons" "1.0.29" "hknEJN0gxlf5brCBgsL5cwr/UC2bQhUU+npH5ZMrpBc=")
    (mkExtension "github.remotehub" "0.46.0" "iZ2bxVo6TZjTNoh7D4ODS2GGVOAJVnNmUW98t5UJ96w=")
    (mkExtension "github.vscode-pull-request-github" "0.54.1" "AhsKTjIhyhGW9KcqAhWAzYAOv/wuQvNFKWlPmiK7hUQ=")
    (mkExtension "golang.go" "0.36.0" "XJ/vYibCeyfv1/zc2xAxdCblnoRUjcjM74/jhE4h0MA=")
    (mkExtension "gruntfuggly.todo-tree" "0.0.220" "U7aY2/ESz9f8foBjydy1G/bWd7CLNyIjDWE3pytZfxo=")
    (mkExtension "jdinhlife.gruvbox" "1.8.0" "P4FbbcRcKWbnC86TSnzQaGn2gHWkDM9I4hj4GiHNPS4=")
    (mkExtension "jnoortheen.nix-ide" "0.2.1" "yC4ybThMFA2ncGhp8BYD7IrwYiDU3226hewsRvJYKy4=")
    (mkExtension "mesonbuild.mesonbuild" "1.7.1" "odLTcgF+qkMwu53lr35tezvFnptox0MGl9n4pZ10JZo=")
    (mkExtension "mkhl.direnv" "0.10.1" "Da9Anme6eoKLlkdYaeLFDXx0aQgrtepuUnw2jEPXCVU=")
    (mkExtension "ms-azuretools.vscode-docker" "1.23.2" "R2pO9TfyADraQxtw5NP09Qew5MBC4tSJ0Ekb3x2E5ZA=")
    (mkExtension "ms-ceintl.vscode-language-pack-es" "1.74.11300938" "WCorsJUvDinwB0UAkHJoit0rLOWpN4Mba6ItDJKN64o=")
    (mkExtension "ms-vscode.remote-repositories" "0.24.0" "uJXobug3q5kpFjWLhejM1Fta6vtAoksHuahFeAnW8nE=")
    (mkExtension "piotrpalarz.vscode-gitignore-generator" "1.0.3" "eqNjkoXXkcbtMDr2ndThqQ2qRFPw1ucQi6hv0eCBw3k=")
    (mkExtension "prince781.vala" "1.0.8" "IuIb7vLNiE3rzVHOsjInaYLzNYORbwabQq0bfaPLlqc=")
    (mkExtension "redhat.vscode-yaml" "1.11.10112022" "/ZD3LOf6d5dJJW7eGZgkrf4hj1CXZJNI0u06Bnmyo0Q=")
    (mkExtension "rust-lang.rust-analyzer" "0.3.1317" "4Ana96RmRcu3oQQkhPr7yGqbRLYHmX5MmnP2t4eXJRo=")
    (mkExtension "sclu1034.justfile" "2.1.0" "Gjc9tYwdJ0it/7LYpekh3Bz2lwJd9y4iMpZlVZ2VpDQ=")
    (mkExtension "streetsidesoftware.code-spell-checker" "2.11.1" "o6Se+xpqwrdJIMnVE/HaDGIoDqZkeX0nTGHa8GjaqVQ=")
    (mkExtension "tamasfe.even-better-toml" "0.19.0" "MqSQarNThbEf1wHDTf1yA46JMhWJN46b08c7tV6+1nU=")
    (mkExtension "timonwong.shellcheck" "0.29.1" "BLjCxoePUeKIMrZ6+wRCQRaItgyR+CtdNPxdwpVHdCo=")
    (mkExtension "ultram4rine.vscode-choosealicense" "0.9.0" "m60comJWcMEtWzf4y5o33/4I0nGiko4pXHC7YufoKY0=")
    (mkExtension "usernamehw.errorlens" "3.6.0" "oNzB81mPZjEwrqbeFMvTlXERXrYBpF03EH9ZXz/daOs=")
    (mkExtension "wmaurer.change-case" "1.0.0" "tN/jlG2PzuiCeERpgQvdqDoa3UgrUaM7fKHv6KFqujc=")
    (mkExtension "yzhang.markdown-all-in-one" "3.5.0" "q2DdFc7Q4MYr03+mDyMtYr3+5Fy4oPq7c69LIkTZz8I=")
  ];
}
