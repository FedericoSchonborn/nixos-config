{
  description = "NixOS configuration files";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, home-manager }:
    {
      nixosConfigurations.Swift-SF314-52 = nixpkgs.lib.nixosSystem
        {
          modules = [ ./Swift-SF314-52/configuration.nix ];
        };
    };
}
