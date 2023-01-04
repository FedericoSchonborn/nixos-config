{
  programs = {
    command-not-found.enable = true;
    # Workaround for NixOS/nixpkgs#180720
    dconf.enable = true;
  };
}
