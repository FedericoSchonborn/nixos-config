{nur, ...}: {
  nixpkgs = {
    config = {
      allowUnfree = true;
      allowUnfreePredicate = pkg: true;

      packageOverrides = pkgs: {
        nur = import nur {
          nurpkgs = pkgs;
          inherit pkgs;
        };
      };
    };
  };
}
