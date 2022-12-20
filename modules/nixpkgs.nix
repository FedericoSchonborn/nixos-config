{inputs, ...}: {
  nixpkgs = {
    config = {
      allowUnfree = true;

      packageOverrides = pkgs: {
        nur = import inputs.nur {
          nurpkgs = pkgs;
          inherit pkgs;
        };
      };
    };

    overlays = [
      inputs.budgie.overlays.default
    ];
  };
}
