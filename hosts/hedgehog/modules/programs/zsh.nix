{ pkgs, ... }:

{
  programs.zsh = {
    enable = true;

    autosuggestions = {
      enable = true;
      async = true;
    };

    enableBashCompletion = true;
    syntaxHighlighting.enable = true;
    vteIntegration = true;
    interactiveShellInit = ''
      source "${pkgs.grml-zsh-config}/etc/zsh/zshrc"
    '';
  };
}
