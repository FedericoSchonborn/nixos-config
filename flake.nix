{
  description = "NixOS configuration files";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
    nixos-hardware.url = "github:NixOS/nixos-hardware";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs = {
        nixpkgs.follows = "nixpkgs";
        utils.follows = "flake-utils";
      };
    };

    agenix = {
      url = "github:ryantm/agenix";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nixos-generators = {
      url = "github:nix-community/nixos-generators";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nix-on-droid = {
      url = "github:t184256/nix-on-droid";
      inputs = {
        nixpkgs.follows = "nixpkgs";
        flake-utils.follows = "flake-utils";
        home-manager.follows = "home-manager";
      };
    };
  };

  outputs = {
    self,
    nixpkgs,
    flake-utils,
    home-manager,
    agenix,
    nixos-hardware,
    nixos-generators,
    nix-on-droid,
    ...
  }: let
    sharedModules = [
      home-manager.nixosModules.home-manager
      {
        home-manager = {
          useGlobalPkgs = true;
          useUserPackages = true;
        };
      }
      {
        nix = {
          registry.nixpkgs.flake = nixpkgs;
          nixPath = ["nixpkgs=${nixpkgs}"];
        };
      }
    ];
  in
    {
      nixosConfigurations = {
        # Acer Swift 3
        swift3 = nixpkgs.lib.nixosSystem {
          system = "x86_64-linux";
          modules =
            [
              nixos-hardware.nixosModules.common-cpu-intel-kaby-lake
              nixos-hardware.nixosModules.common-gpu-intel
              nixos-hardware.nixosModules.common-pc-laptop
              nixos-hardware.nixosModules.common-pc-laptop-ssd
              ./hosts/swift3
              ./users/federico
            ]
            ++ sharedModules;
        };

        # Gateway ZX4250
        zx4250 = nixpkgs.lib.nixosSystem {
          system = "x86_64-linux";
          modules =
            [
              nixos-hardware.nixosModules.common-cpu-amd
              nixos-hardware.nixosModules.common-gpu-amd
              nixos-hardware.nixosModules.common-pc
              nixos-hardware.nixosModules.common-pc-hdd
              ./hosts/zx4250
              ./users/casa
            ]
            ++ sharedModules;
        };

        # Raspberry Pi 4 Model B (2GB)
        pi4b = nixpkgs.lib.nixosSystem {
          system = "aarch64-linux";
          modules =
            [
              nixos-hardware.nixosModules.raspberry-pi-4
              agenix.nixosModules.age
              ./hosts/pi4b
              ./users/pi
            ]
            ++ sharedModules;
        };
      };

      nixOnDroidConfigurations = {
        # Samsung Galaxy A32 (4G)
        a32 = nix-on-droid.lib.nixOnDroidConfiguration {
          system = "aarch64-linux";
          config = ./hosts/a32;
        };
      };
    }
    // flake-utils.lib.eachDefaultSystem (system: let
      pkgs = import nixpkgs {inherit system;};
    in {
      formatter = pkgs.alejandra;
    });
}
