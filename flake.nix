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

    helix = {
      url = "github:helix-editor/helix";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    zellij = {
      url = "github:zellij-org/zellij";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, nixos-hardware, flake-utils, home-manager, helix, zellij, ... }:
    {
      nixosConfigurations = {
        # Acer Swift 3 (SF314-52)
        hedgehog = nixpkgs.lib.nixosSystem {
          system = "x86_64-linux";
          modules = [
            # Modules
            nixos-hardware.nixosModules.common-cpu-intel-kaby-lake
            nixos-hardware.nixosModules.common-gpu-intel
            nixos-hardware.nixosModules.common-pc-laptop
            nixos-hardware.nixosModules.common-pc-laptop-ssd
            home-manager.nixosModules.home-manager

            # Configuration files
            ./hosts/hedgehog/configuration.nix
            ./users/federico/configuration.nix
          ];
        };

        # Raspberry Pi 4 Model B (1GB)
        # echidna = nixpkgs.lib.nixosSystem {
        #   system = "aarch64-linux";
        #   modules = [
        #     ./hosts/echidna/configuration.nix
        #   ];
        # };
      };

      overlays.helix = final: prev: {
        helix = helix.packages.${prev.system}.default;
      };
    } // flake-utils.lib.eachSystem [ "x86_64-linux" "aarch64-linux" ] (system:
      let
        pkgs = import nixpkgs {
          inherit system;
          overlays = [ self.overlays.helix zellij.overlays.default ];
        };
      in
      {
        homeConfigurations = {
          # Personal account.
          federico = home-manager.lib.homeManagerConfiguration {
            inherit pkgs;
            modules = [
              ./users/federico/home.nix
            ];
          };
        };

        devShells.default = pkgs.mkShell
          {
            buildInputs = with pkgs; [
              rnix-lsp
              nixpkgs-fmt
            ];
            shellHook = ''
              nixpkgs-fmt --version
            '';
          };
      }
    );
}
