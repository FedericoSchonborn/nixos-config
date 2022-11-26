{pkgs, ...}: {
  programs.firefox.extensions = with pkgs.nur.repos.rycee.firefox-addons; [
    # Missing:
    # - Black Menu for Google
    # - File Icons for GitHub and GitLab
    # - Notifier for GitHub
    # - Side View
    # - Web Archives
    enchancer-for-youtube
    multi-account-containers
    firefox-translations
    keepassxc-browser
    refined-github
    rust-search-extension
    reddit-enhancement-suite
    search-by-image
    ublock-origin
  ];
}
