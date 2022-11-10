{
  nix = {
    gc.automatic = true;
    optimise.automatic = true;

    settings = {
      experimental-features = ["nix-command" "flakes"];
      trusted-users = ["root" "@wheel"];
    };
  };

  nixpkgs = {
    config.allowUnfree = true;

    # Workaround for missing kernel modules.
    # See: https://github.com/NixOS/nixpkgs/issues/126755#issuecomment-869149243
    overlays = [
      (final: super: {
        makeModulesClosure = x:
          super.makeModulesClosure (x // {allowMissing = true;});
      })
    ];
  };
}
