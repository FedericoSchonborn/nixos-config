{pkgs, ...}: {
  programs.vscode.extensions = pkgs.vscode-utils.extensionsFromVscodeMarketplace [
    {
      # Spanish - Code Spell Checker
      name = "code-spell-checker-spanish";
      publisher = "streetsidesoftware";
      version = "2.1.2";
      sha256 = "36odsJkyeiCi9Be7vXL9vMop3TKxmRj2hVML+yFuC7U=";
    }
    {
      # Code Spell Checker
      name = "code-spell-checker";
      publisher = "streetsidesoftware";
      version = "2.7.0";
      sha256 = "9W6hYE6RVzcfNh5v8bbEMZ3f7PV24jaD9srUE5FRFaE=";
    }
    {
      # crates
      name = "crates";
      publisher = "serayuzgur";
      version = "0.5.10";
      sha256 = "bY/dphiEPPgTg1zMjvxx4b0Ska2XggRucnZxtbppcLU=";
    }
    {
      # direnv
      name = "direnv";
      publisher = "mkhl";
      version = "0.6.1";
      sha256 = "5/Tqpn/7byl+z2ATflgKV1+rhdqj+XMEZNbGwDmGwLQ=";
    }
    {
      # Discord Presence
      name = "discord-vscode";
      publisher = "icrawl";
      version = "5.8.0";
      sha256 = "IU/looiu6tluAp8u6MeSNCd7B8SSMZ6CEZ64mMsTNmU=";
    }
    {
      # :emojisense:
      name = "emojisense";
      publisher = "bierner";
      version = "0.9.1";
      sha256 = "bfhImi2qMHWkgKqkoStS0NtbXTfj6GpcLkI0PSMjuvg=";
    }
    {
      # Even Better TOML
      name = "even-better-toml";
      publisher = "tamasfe";
      version = "0.17.1";
      sha256 = "EoUtlLZfAZ5W1b1cWwTNuBdY+h0QmMG9L3fvIfJsEQk=";
    }
    {
      # file-icons (file-icons)
      name = "file-icons";
      publisher = "file-icons";
      version = "1.0.29";
      sha256 = "hknEJN0gxlf5brCBgsL5cwr/UC2bQhUU+npH5ZMrpBc=";
    }
    {
      # Go
      name = "go";
      publisher = "golang";
      version = "0.35.2";
      sha256 = "YQPKB6dtIwmghw1VnYu+9krVICV2gm7Vq1FRq7lJbto=";
    }
    {
      # Gruvbox Theme
      name = "gruvbox";
      publisher = "jdinhlife";
      version = "1.7.0";
      sha256 = "Gxhye9NiRiFur6mU1PVsmW2ze1D/nsb7KnPDrtdP2Jw=";
    }
    {
      # Markdown All in One
      name = "markdown-all-in-one";
      publisher = "yzhang";
      version = "3.4.4";
      sha256 = "2lZfWP+yk0Dp8INLjlJY5ROGu0sLaWhb4fT+O9xGg0s=";
    }
    {
      # Markdown Checkboxes
      name = "markdown-checkbox";
      publisher = "bierner";
      version = "0.3.2";
      sha256 = "HrRIKKK6by95sCb0RfnPULVgtzipjK8qtPHG4T1Tsoo=";
    }
    {
      # Markdown Emoji
      name = "markdown-emoji";
      publisher = "bierner";
      version = "0.3.0";
      sha256 = "rw8/HeDA8kQuiPVDpeOGw1Mscd6vn4utw1Qznsd8lVI=";
    }
    {
      # Markdown Footnotes
      name = "markdown-footnotes";
      publisher = "bierner";
      version = "0.0.7";
      sha256 = "hbnC+4M4KKku0uHjp25TGnD3gz10kGaTjLckqtDT2Mw=";
    }
    {
      # Markdown Preview Mermaid Support
      name = "markdown-mermaid";
      publisher = "bierner";
      version = "1.15.2";
      sha256 = "qCadlrdQjBNZXneYBDARPqKSOoL8v9VRsf2LHbcrAXM=";
    }
    {
      # Markdown yaml Preamble
      name = "markdown-yaml-preamble";
      publisher = "bierner";
      version = "0.1.0";
      sha256 = "5eIrLbkHz73JStqaIqoNXWXWA8A2dEVFulp4nXczi/Y=";
    }
    {
      # nix-develop
      name = "nix-develop";
      publisher = "jamesottaway";
      version = "0.0.1";
      sha256 = "ldD907spPCgHQ10XphaRAbgkNcYdzACqUOr2Cf5o8zU=";
    }
    {
      # Nix Env Selector
      name = "nix-env-selector";
      publisher = "arrterian";
      version = "1.0.9";
      sha256 = "TkxqWZ8X+PAonzeXQ+sI9WI+XlqUHll7YyM7N9uErk0=";
    }
    {
      # Nix IDE
      name = "nix-ide";
      publisher = "jnoortheen";
      version = "0.1.23";
      sha256 = "64gwwajfgniVzJqgVLK9b8PfkNG5mk1W+qewKL7Dv0Q=";
    }
    {
      # Path Intellisense
      name = "path-intellisense";
      publisher = "christian-kohler";
      version = "2.8.1";
      sha256 = "lTKzMphkGgOG2XWqz3TW2G9sISBc/kG7oXqcIH8l+Mg=";
    }
    {
      # Remote - Containers
      name = "remote-containers";
      publisher = "ms-vscode-remote";
      version = "0.245.0";
      sha256 = "j+68VfycQDtcv2MP5ZJjjHuAV8sC24VimUIDB7KwJkI=";
    }
    {
      # Remote - SSH: Edition Configuration Files
      name = "remote-ssh-edit";
      publisher = "ms-vscode-remote";
      version = "0.80.0";
      sha256 = "2rAIZnzVSU1J3wsNJ3wW9Bnqh4IgSmYCGfn2BJJo+X0=";
    }
    {
      # Remote - SSH
      name = "remote-ssh";
      publisher = "ms-vscode-remote";
      version = "0.85.2022082615";
      sha256 = "Y9bODwzYXIhQrLCElFd9ShJUx+IeSsJnFBEx79xCvsQ=";
    }
    {
      # Rust Analyzer
      name = "rust-analyzer";
      publisher = "rust-lang";
      version = "0.4.1185";
      sha256 = "kQ2m/CPbA7qJl4tF2vM8j+8EV+YpH/d7FS6qdYeWOS0=";
    }
    {
      # ShellCheck
      name = "shellcheck";
      publisher = "timonwong";
      version = "0.21.3";
      sha256 = "V9g+Wa59ivXbxMZtN7Lt4bp9v0N4fYGCy3HvI9MdJE8=";
    }
    {
      # Todo Tree
      name = "todo-tree";
      publisher = "gruntfuggly";
      version = "0.0.215";
      sha256 = "WK9J6TvmMCLoqeKWh5FVp1mNAXPWVmRvi/iFuLWMylM=";
    }
    {
      # Choose A License
      name = "vscode-choosealicense";
      publisher = "ultram4rine";
      version = "0.8.0";
      sha256 = "iZFpBRHM6jpJtgbOQN06Hqiudf+eruDInx3KwKN9jI8=";
    }
    {
      # Docker
      name = "vscode-docker";
      publisher = "ms-azuretools";
      version = "1.22.1";
      sha256 = "okR1mmwg1ZEUfP924LTa98LxCenwDZ1BIS/FLt0wo8c=";
    }
    {
      # .gitignore Generator
      name = "vscode-gitignore-generator";
      publisher = "piotrpalarz";
      version = "1.0.3";
      sha256 = "eqNjkoXXkcbtMDr2ndThqQ2qRFPw1ucQi6hv0eCBw3k=";
    }
    {
      # Spanish Language Pack for Visual Studio Code
      name = "vscode-language-pack-es";
      publisher = "ms-ceintl";
      version = "1.71.8240916";
      sha256 = "Epa6h3J2thVkmKYG7JzhCtgDzIU0RdQUY1SC0bfSyw0=";
    }
    {
      # markdownlint
      name = "vscode-markdownlint";
      publisher = "davidanson";
      version = "0.48.1";
      sha256 = "3TpZGvas+pfabHayaA6Yd9nOO2MbfXbCvCiTcbja9Vo=";
    }
    {
      # GitHub Pull Requests and Issues
      name = "vscode-pull-request-github";
      publisher = "github";
      version = "0.49.2022082909";
      sha256 = "qZG4g+6Q6vpkVvTI/YWCe1TsUuzZnfk0QyxhC3JzuOs=";
    }
    {
      # YAML
      name = "vscode-yaml";
      publisher = "redhat";
      version = "1.10.20220805";
      sha256 = "BZHU9FrFqsO09fllMF3+vszrGnPrfQmhVgpcNQhPv/w=";
    }
  ];
}
