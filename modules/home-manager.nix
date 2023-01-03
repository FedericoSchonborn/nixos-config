{self, ...}: {
  home-manager = {
    useGlobalPkgs = true;
    useUserPackages = true;
    extraSpecialArgs = {
      inherit self;
      inherit (self) inputs;
    };
  };
}
