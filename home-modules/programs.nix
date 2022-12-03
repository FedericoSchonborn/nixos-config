{
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

      oh-my-zsh = {
        enable = true;
      };
    };
  };
}
