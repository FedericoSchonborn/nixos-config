{inputs, ...}: {
  nix = {
    gc.automatic = true;
    optimise.automatic = true;
    # TODO: Add *all* inputs and substituters here.
    registry.nixpkgs.flake = inputs.nixpkgs;
    nixPath = ["nixpkgs=${inputs.nixpkgs}"];
    settings = {
      experimental-features = ["nix-command" "flakes"];
      trusted-users = ["root" "@wheel"];
    };
  };
}
