{
  programs = {
    # Required by nix-index.
    command-not-found.enable = false;
    # Workaround for NixOS/nixpkgs#180720
    dconf.enable = true;
    nix-index.enableZshIntegration = true;
  };
}
