{
  description = "Configuration files for NixOS and Home Manager";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    nur.url = "github:nix-community/NUR";
    nixos-hardware.url = "github:NixOS/nixos-hardware";
    nixos-generators.url = "github:nix-community/nixos-generators";

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

    nil = {
      url = "github:oxalica/nil";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    pre-commit-hooks = {
      url = "github:cachix/pre-commit-hooks.nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = {
    self,
    nixpkgs,
    nur,
    nixos-hardware,
    nixos-generators,
    home-manager,
    nix-on-droid,
    nil,
    pre-commit-hooks,
    ...
  } @ inputs: let
    forAllSystems = nixpkgs.lib.genAttrs ["x86_64-linux" "aarch64-linux"];
  in {
    nixosConfigurations = {
      # Acer Swift 3
      swift3 = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        specialArgs = {inherit inputs;};
        modules = [
          ./machines/swift3
          ./users/federico
        ];
      };

      # Gateway ZX4250
      zx4250 = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        specialArgs = {inherit inputs;};
        modules = [
          ./machines/zx4250
          ./users/casa
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
              statix.enable = true;
            };
          };
      });

    formatter = forAllSystems (system: nixpkgs.legacyPackages.${system}.alejandra);
  };
}
