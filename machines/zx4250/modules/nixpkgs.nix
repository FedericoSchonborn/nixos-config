{budgie, ...}: {
  nixpkgs = {
    config.allowUnfree = true;
    overlays = [budgie.overlays.default];
  };
}
