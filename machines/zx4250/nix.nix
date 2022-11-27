{
  nix = {
    gc.automatic = true;
    optimise.automatic = true;

    settings = {
      experimental-features = ["nix-command" "flakes"];
      trusted-users = ["root" "@wheel"];
    };
  };

  nixpkgs.config.allowUnfree = true;
}
