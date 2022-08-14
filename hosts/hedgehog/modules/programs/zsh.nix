{ pkgs, ... }:

{
  programs.zsh = {
    enable = true;
    enableBashCompletion = true;
    interactiveShellInit = ''
      source "${pkgs.grml-zsh-config}/etc/zsh/zshrc"
    '';
    syntaxHighlighting.enable = true;
    vteIntegration = true;

    autosuggestions = {
      enable = true;
      async = true;
    };
  };
}
