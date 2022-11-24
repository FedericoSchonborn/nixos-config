{
  description = "Configuration files for NixOS and Home Manager";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    nixos-hardware.url = "github:NixOS/nixos-hardware";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
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
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = {
    self,
    nixpkgs,
    nixos-hardware,
    home-manager,
    nix-on-droid,
    pre-commit-hooks,
    ...
  } @ inputs: let
    forAllSystems = nixpkgs.lib.genAttrs ["x86_64-linux" "aarch64-linux"];

    sharedModules = [
      # Nix
      {
        # TODO: Add *all* inputs and substituters here.
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
  in {
    nixosConfigurations = {
      # Acer Swift 3
      swift3 = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        specialArgs = inputs;
        modules =
          sharedModules
          ++ [
            ./hosts/swift3
            ./users/federico
          ];
      };

      # Gateway ZX4250
      zx4250 = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        specialArgs = inputs;
        modules =
          sharedModules
          ++ [
            ./hosts/zx4250
            ./users/casa
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

    devShells = forAllSystems (system: let
      pkgs = nixpkgs.legacyPackages.${system};
    in {
      default = pkgs.mkShell {
        packages = with pkgs; [
          just
        ];

        inherit (self.checks.${system}.pre-commit-check) shellHook;
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
