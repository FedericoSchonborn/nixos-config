{inputs, ...}: {
  nixpkgs.overlays = [
    inputs.nil.overlays.default
  ];
}
