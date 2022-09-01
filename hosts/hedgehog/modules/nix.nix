{
  nix = {
    gc.automatic = true;
    optimise.automatic = true;
    settings.experimental-features = ["nix-command" "flakes"];
    extraOptions = ''
      bash-prompt-prefix = (develop)
    '';
  };

  nixpkgs = {
    config.allowUnfree = true;
    hostPlatform = "x86_64-linux";
  };
}
