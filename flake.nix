{
  description = "Configuration files for NixOS and Home Manager";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    nixos-hardware.url = "github:NixOS/nixos-hardware";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs = {
        nixpkgs.follows = "nixpkgs";
      };
    };

    nix-on-droid = {
      url = "github:t184256/nix-on-droid";
      inputs = {
        nixpkgs.follows = "nixpkgs";
        home-manager.follows = "home-manager";
      };
    };

    pre-commit-hooks = {
      url = "github:cachix/pre-commit-hooks.nix";
      inputs = {
        nixpkgs.follows = "nixpkgs";
      };
    };
  };

  outputs = {
    nixpkgs,
    nixos-hardware,
    home-manager,
    nix-on-droid,
    pre-commit-hooks,
    ...
  }: let
    forAllSystems = nixpkgs.lib.genAttrs ["x86_64-linux" "aarch64-linux"];

    sharedModules = [
      # Nix
      {
        nix = {
          registry.nixpkgs.flake = nixpkgs;
          nixPath = ["nixpkgs=${nixpkgs}"];
        };
      }

      # Home Manager
      home-manager.nixosModules.home-manager
      {
        home-manager = {
          useGlobalPkgs = true;
          useUserPackages = true;
        };
      }
    ];
  in rec
  {
    nixosConfigurations = {
      # Acer Swift 3
      swift3 = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules =
          sharedModules
          ++ [
            nixos-hardware.nixosModules.common-cpu-intel-kaby-lake
            nixos-hardware.nixosModules.common-gpu-intel
            nixos-hardware.nixosModules.common-pc-laptop
            nixos-hardware.nixosModules.common-pc-laptop-ssd
            ./hosts/swift3
            ./users/federico
          ];
      };

      # Gateway ZX4250
      zx4250 = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules =
          sharedModules
          ++ [
            nixos-hardware.nixosModules.common-cpu-amd
            nixos-hardware.nixosModules.common-gpu-amd
            nixos-hardware.nixosModules.common-pc
            nixos-hardware.nixosModules.common-pc-hdd
            ./hosts/zx4250
            ./users/casa
          ];
      };

      # Raspberry Pi 4 Model B (2GB)
      pi4b = nixpkgs.lib.nixosSystem {
        system = "aarch64-linux";
        modules =
          sharedModules
          ++ [
            nixos-hardware.nixosModules.raspberry-pi-4
            ./hosts/pi4b
            ./users/pi
          ];
      };
    };

    nixOnDroidConfigurations = {
      # Samsung Galaxy A32 (4G)
      a32 = nix-on-droid.lib.nixOnDroidConfiguration {
        modules =
          sharedModules
          ++ [
            ./hosts/a32
          ];
      };
    };

    packages = {
      "x86_64-linux" = {
        swift3-vm = nixosConfigurations.swift3.config.system.build.vm;
        zx4250-vm = nixosConfigurations.zx4250.config.system.build.vm;
      };

      "aarch64-linux" = {
        pi4b-sd = nixosConfigurations.pi4b.config.system.build.sdImage;
      };
    };

    devShells = forAllSystems (system: let
      pkgs = nixpkgs.legacyPackages.${system};
    in {
      default = pkgs.mkShell {
        packages = with pkgs; [
          just
        ];

        shellHook = ''
          ${checks.${system}.pre-commit-check.shellHook}
        '';
      };
    });

    checks =
      forAllSystems
      (system: {
        pre-commit-check =
          pre-commit-hooks.lib.${system}.run
          {
            src = ./.;
            hooks = {
              alejandra.enable = true;
            };
          };
      });

    formatter = forAllSystems (system: nixpkgs.legacyPackages.${system}.alejandra);
  };
}
