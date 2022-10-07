{
  description = "NixOS configuration files";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs";
    flake-utils.url = "github:numtide/flake-utils";
    nixos-hardware.url = "github:NixOS/nixos-hardware";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs = {
        nixpkgs.follows = "nixpkgs";
        utils.follows = "flake-utils";
      };
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
    nixpkgs,
    flake-utils,
    nixos-hardware,
    home-manager,
    nixos-generators,
    nix-on-droid,
    ...
  }:
    {
      nixosConfigurations = {
        # Acer Swift 3
        swift3 = nixpkgs.lib.nixosSystem {
          system = "x86_64-linux";
          modules = [
            nixos-hardware.nixosModules.common-cpu-intel-kaby-lake
            nixos-hardware.nixosModules.common-gpu-intel
            nixos-hardware.nixosModules.common-pc-laptop
            nixos-hardware.nixosModules.common-pc-laptop-ssd
            home-manager.nixosModules.home-manager
            ./hosts/swift3
            ./users/federico
          ];
        };

        # Gateway ZX4250
        zx4250 = nixpkgs.lib.nixosSystem {
          system = "x86_64-linux";
          modules = [
            nixos-hardware.nixosModules.common-cpu-amd
            nixos-hardware.nixosModules.common-gpu-amd
            nixos-hardware.nixosModules.common-pc
            nixos-hardware.nixosModules.common-pc-hdd
            home-manager.nixosModules.home-manager
            ./hosts/zx4250
            ./users/casa
          ];
        };

        # Raspberry Pi 4 Model B (1GB)
        pi4b = nixpkgs.lib.nixosSystem {
          system = "aarch64-linux";
          modules = [
            nixos-hardware.nixosModules.raspberry-pi-4
            home-manager.nixosModules.home-manager
            ./hosts/pi4b
            ./users/pi
          ];
        };
      };

      nixOnDroidConfigurations = {
        # Samsung Galaxy A32 (4G)
        a32 = nix-on-droid.lib.nixOnDroidConfiguration {
          system = "aarch64-linux";
          config = ./hosts/a32;
        };
      };

      packages = {
        x86_64-linux = {
          zx4250-iso = nixos-generators.nixosGenerate {
            system = "x86_64-linux";
            modules = [
              nixos-hardware.nixosModules.common-cpu-amd
              nixos-hardware.nixosModules.common-gpu-amd
              nixos-hardware.nixosModules.common-pc
              nixos-hardware.nixosModules.common-pc-hdd
              home-manager.nixosModules.home-manager
              ./hosts/zx4250
              ./users/casa
            ];
            format = "install-iso";
          };
        };

        aarch64-linux = {
          pi4b-sd = nixos-generators.nixosGenerate {
            system = "aarch64-linux";
            modules = [
              nixos-hardware.nixosModules.raspberry-pi-4
              home-manager.nixosModules.home-manager
              ./hosts/pi4b/minimal.nix
              ./users/pi
              {
                # See: https://github.com/NixOS/nixpkgs/issues/126755#issuecomment-869149243
                nixpkgs.overlays = [
                  (final: super: {
                    makeModulesClosure = x:
                      super.makeModulesClosure (x // {allowMissing = true;});
                  })
                ];
              }
            ];
            format = "sd-aarch64";
          };
        };
      };
    }
    // flake-utils.lib.eachDefaultSystem (system: let
      pkgs = nixpkgs.legacyPackages.${system};
    in {
      formatter = pkgs.alejandra;
    });
}
