{pkgs, ...}: {
  programs.firefox.extensions = with pkgs.nur.repos.rycee.firefox-addons; [
    # Missing:
    # - Black Menu for Google
    # - File Icons for GitHub and GitLab
    # - Notifier for GitHub
    # - Side View
    # - Web Archives
    bitwarden
    enhancer-for-youtube
    firefox-translations
    multi-account-containers
    refined-github
    rust-search-extension
    search-by-image
    ublock-origin
  ];
}
