{
  description = "NixOS configuration files";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager/master";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    fenix = {
      url = "github:nix-community/fenix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = inputs@{ nixpkgs, home-manager, fenix, ... }: {
    nixosConfigurations = {
      # Acer Swift 3 (SF314-52)
      hedgehog = nixpkgs.lib.nixosSystem {
        specialArgs = inputs;
        modules = [
          ./hosts/hedgehog/configuration.nix
          home-manager.nixosModules.home-manager
        ];
      };

      # Raspberry Pi 4 Model B (1GB)
      # echidna = nixpkgs.lib.nixosSystem {
      #   specialArgs = inputs;
      #   modules = [
      #     ./hosts/echidna/configuration.nix
      #   ];
      # };
    };
  };
}
