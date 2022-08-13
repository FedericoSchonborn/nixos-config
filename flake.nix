{
  description = "NixOS configuration files";

  inputs.nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

  outputs = { self, nixpkgs }:
    {
      nixosConfigurations.Swift-SF314-52 = nixpkgs.lib.nixosSystem
        {
          modules = [ ./Swift-SF314-52/configuration.nix ];
        };
    };
}
