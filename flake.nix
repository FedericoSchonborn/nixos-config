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

    nil = {
      url = "github:oxalica/nil";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    alejandra = {
      url = "github:kamadorueda/alejandra";
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
    nil,
    alejandra,
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

        nixpkgs.overlays = [
          nil.overlays.default
        ];
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

        shellHook = ''
          ${self.checks.${system}.pre-commit-check.shellHook}
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

    formatter = forAllSystems (system: alejandra.packages.${system}.default);
  };

  nixConfig = {
    extra-substituters = [
      "https://nix-community.cachix.org/"
      "https://alejandra.cachix.org/"
    ];
    extra-trusted-public-keys = [
      "nix-community.cachix.org-1:mB9FSh9qf2dCimDSUo8Zy7bkq5CX+/rkCWyvRCYg3Fs="
      "alejandra.cachix.org-1:NjZ8kI0mf4HCq8yPnBfiTurb96zp1TBWl8EC54Pzjm0="
    ];
  };
}
