{pkgs, ...}: {
  programs.vscode.extensions =
    (with pkgs.vscode-extensions; [
      rust-lang.rust-analyzer
    ])
    ++ (pkgs.vscode-utils.extensionsFromVscodeMarketplace [
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
        publisher = "piotrpalarz";
        name = "vscode-gitignore-generator";
        version = "1.0.3";
        sha256 = "eqNjkoXXkcbtMDr2ndThqQ2qRFPw1ucQi6hv0eCBw3k=";
      }
      {
        publisher = "redhat";
        name = "vscode-yaml";
        version = "1.11.10112022";
        sha256 = "/ZD3LOf6d5dJJW7eGZgkrf4hj1CXZJNI0u06Bnmyo0Q=";
      }
      {
        publisher = "tamasfe";
        name = "even-better-toml";
        version = "0.19.0";
        sha256 = "MqSQarNThbEf1wHDTf1yA46JMhWJN46b08c7tV6+1nU=";
      }
      {
        publisher = "ultram4rine";
        name = "vscode-choosealicense";
        version = "0.9.0";
        sha256 = "m60comJWcMEtWzf4y5o33/4I0nGiko4pXHC7YufoKY0=";
      }
    ]);
}
