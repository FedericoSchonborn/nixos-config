{
  lib,
  config,
  self,
  ...
}: {
  nix = {
    gc.automatic = true;
    optimise.automatic = true;
    registry = lib.mapAttrs (_: value: {flake = value;}) self.inputs;
    nixPath = lib.mapAttrsToList (key: value: "${key}=${value.to.path}") config.nix.registry;
    settings = {
      experimental-features = ["nix-command" "flakes"];
      trusted-users = ["root" "@wheel"];
    };
  };
}
