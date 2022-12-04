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
  };

  outputs = {
    self,
    nixpkgs,
    nur,
    nixos-hardware,
    home-manager,
    ...
  } @ inputs: let
    forAllSystems = nixpkgs.lib.genAttrs ["x86_64-linux" "aarch64-linux"];

    machines = {
      # Acer Swift 3
      swift3 = {
        system = "x86_64-linux";
        specialArgs = {inherit inputs;};
        modules = [
          ./machines/swift3
          ./users/federico
        ];
      };

      # Gateway ZX4250
      zx4250 = {
        system = "x86_64-linux";
        specialArgs = {inherit inputs;};
        modules = [
          ./machines/zx4250
          ./users/casa
        ];
      };
    };

    isoModules = [
      "${nixpkgs}/nixos/modules/installer/cd-dvd/iso-image.nix"
      ({config, ...}: {
        isoImage = {
          isoBaseName = "nixos-${config.networking.hostName}-${config.system.nixos.label}";
          squashfsCompression = "zstd -Xcompression-level 1";
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

    devShells = forAllSystems (system: let
      pkgs = nixpkgs.legacyPackages.${system};
    in {
      default = pkgs.mkShell {
        nativeBuildInputs = with pkgs; [
          just
          nil
          alejandra
          statix
        ];

        shellHook = ''
          just --version
          nil --version
          alejandra --version
          statix --version
        '';
      };
    });

    formatter = forAllSystems (system: nixpkgs.legacyPackages.${system}.alejandra);
  };
}
