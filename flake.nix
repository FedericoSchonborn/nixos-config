{
  description = "NixOS configuration files";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    nixos-hardware.url = "github:nixos/nixos-hardware";
    flake-utils.url = "github:numtide/flake-utils";

    home-manager = {
      url = "github:nix-community/home-manager/master";
      inputs = {
        nixpkgs.follows = "nixpkgs";
        utils.follows = "flake-utils";
      };
    };

    budgie-overlay = {
      url = "github:FedericoSchonborn/budgie-overlay";
      inputs = {
        nixpkgs.follows = "nixpkgs";
        flake-utils.follows = "flake-utils";
      };
    };
  };

  outputs = {
    nixpkgs,
    nixos-hardware,
    flake-utils,
    home-manager,
    budgie-overlay,
    ...
  }: let
    inherit (nixpkgs.lib) nixosSystem;
    inherit (flake-utils.lib) eachSystem system;
  in
    {
      nixosConfigurations = {
        # Acer Swift 3 (SF314-52)
        swift = nixosSystem {
          system = "x86_64-linux";
          modules = [
            nixos-hardware.nixosModules.common-cpu-intel-kaby-lake
            nixos-hardware.nixosModules.common-gpu-intel
            nixos-hardware.nixosModules.common-pc-laptop
            nixos-hardware.nixosModules.common-pc-laptop-ssd
            home-manager.nixosModules.home-manager
            ./hosts/swift
            ./users/federico
            ./modules/desktop/plasma
          ];
        };

        # Acer Swift 3 (SF314-52) + Budgie Desktop
        swift-budgie = nixosSystem {
          system = "x86_64-linux";
          modules = [
            nixos-hardware.nixosModules.common-cpu-intel-kaby-lake
            nixos-hardware.nixosModules.common-gpu-intel
            nixos-hardware.nixosModules.common-pc-laptop
            nixos-hardware.nixosModules.common-pc-laptop-ssd
            home-manager.nixosModules.home-manager
            budgie-overlay.nixosModules.default
            {nixpkgs.overlays = [budgie-overlay.overlays.default];}
            ./hosts/swift
            ./users/federico
            ./modules/desktop/budgie
          ];
        };

        # Gateway AiO ZX4250
        zx4250 = nixosSystem {
          system = "x86_64-linux";
          modules = [
            nixos-hardware.nixosModules.common-cpu-amd
            nixos-hardware.nixosModules.common-gpu-amd
            nixos-hardware.nixosModules.common-pc
            nixos-hardware.nixosModules.common-pc-hdd
            home-manager.nixosModules.home-manager
            ./hosts/zx4250
            ./users/casa
            ./modules/desktop/xfce
          ];
        };

        # Raspberry Pi 4 Model B (1GB)
        pi = nixosSystem {
          system = "aarch64-linux";
          modules = [
            nixos-hardware.nixosModules.raspberry-pi-4
            home-manager.nixosModules.home-manager
            ./hosts/pi
            ./users/pi
          ];
        };
      };
    }
    // eachSystem [
      system.x86_64-linux
      system.aarch64-linux
    ]
    (
      system: let
        pkgs = nixpkgs.legacyPackages.${system};
      in {
        devShells.default = pkgs.mkShell {};
        formatter = pkgs.alejandra;
      }
    );
}
