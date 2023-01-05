{pkgs, ...}: {
  programs = {
    home-manager.enable = true;

    starship = {
      enable = true;
      enableZshIntegration = true;
    };

    zsh = {
      enable = true;
      enableAutosuggestions = true;
      enableCompletion = true;
      enableSyntaxHighlighting = true;
      historySubstringSearch.enable = true;
      initExtra = ''
        ${pkgs.neofetch}/bin/neofetch
      '';

      oh-my-zsh = {
        enable = true;
      };
    };
  };
}
