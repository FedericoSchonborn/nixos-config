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
  };

  outputs = {
    nixpkgs,
    nixos-hardware,
    flake-utils,
    home-manager,
    ...
  }: let
    inherit (nixpkgs.lib) nixosSystem;
    inherit (flake-utils.lib) eachSystem system;
  in
    {
      nixosConfigurations = {
        # Acer Swift 3 (SF314-52)
        hedgehog = nixosSystem {
          system = "x86_64-linux";
          modules = [
            # Modules
            nixos-hardware.nixosModules.common-cpu-intel-kaby-lake
            nixos-hardware.nixosModules.common-gpu-intel
            nixos-hardware.nixosModules.common-pc-laptop
            nixos-hardware.nixosModules.common-pc-laptop-ssd
            home-manager.nixosModules.home-manager
            # Configuration files
            ./hosts/hedgehog
            ./users/federico
          ];
        };

        # Raspberry Pi 4 Model B (1GB)
        # echidna = nixosSystem {
        #   system = "aarch64-linux";
        #   modules = [
        #     ./hosts/echidna/configuration.nix
        #   ];
        # };
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
        devShells.default = pkgs.mkShell {
          buildInputs = with pkgs; [
            rnix-lsp
          ];
        };

        formatter = pkgs.alejandra;
      }
    );
}
