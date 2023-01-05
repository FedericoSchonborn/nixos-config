{
  description = "Configuration files for NixOS and Home Manager";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    nur.url = "github:nix-community/NUR";
    nixos-hardware.url = "github:NixOS/nixos-hardware";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    agenix = {
      url = "github:ryantm/agenix";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nix-index-database = {
      url = "github:Mic92/nix-index-database";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    plasma-manager = {
      url = "github:pjones/plasma-manager";
      inputs = {
        nixpkgs.follows = "nixpkgs";
        home-manager.follows = "home-manager";
      };
    };
  };

  outputs = {
    self,
    nixpkgs,
    agenix,
    ...
  } @ inputs: let
    forAllSystems = f: nixpkgs.lib.genAttrs ["x86_64-linux" "aarch64-linux"] (system: f nixpkgs.legacyPackages.${system});

    machines = {
      # Acer Swift 3
      swift3 = {
        system = "x86_64-linux";
        specialArgs = {inherit self;} // inputs;
        modules = [
          ./machines/swift3
          ./users/federico
        ];
      };

      # Gateway ZX4250
      zx4250 = {
        system = "x86_64-linux";
        specialArgs = {inherit self;} // inputs;
        modules = [
          ./machines/zx4250
          ./users/casa
        ];
      };
    };

    # TODO: nix-on-droid for A325M.

    isoModules = [
      "${nixpkgs}/nixos/modules/installer/cd-dvd/iso-image.nix"
      ({config, ...}: {
        isoImage = {
          isoBaseName = "nixos-${config.networking.hostName}-${config.system.nixos.label}";
          compressImage = false;
          makeEfiBootable = true;
          makeUsbBootable = true;
        };
      })
    ];

    isoImagePackage = machine:
      (nixpkgs.lib.nixosSystem {
        inherit (machine) system specialArgs;
        modules = machine.modules ++ isoModules;
      })
      .config
      .system
      .build
      .isoImage;
  in {
    nixosConfigurations = {
      swift3 = nixpkgs.lib.nixosSystem machines.swift3;
      zx4250 = nixpkgs.lib.nixosSystem machines.zx4250;
    };

    packages.x86_64-linux = {
      swift3-iso = isoImagePackage machines.swift3;
      zx4250-iso = isoImagePackage machines.zx4250;
    };

    devShells = forAllSystems (pkgs: {
      default = pkgs.mkShell {
        packages = with pkgs; [
          just
          agenix.packages.${pkgs.system}.agenix
        ];

        shellHook = ''
          just --list
        '';
      };
    });

    formatter = forAllSystems (pkgs: pkgs.alejandra);
  };
}
