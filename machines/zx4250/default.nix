{
  modulesPath,
  nixos-hardware,
  ...
}: {
  imports = [
    nixos-hardware.nixosModules.common-cpu-amd
    nixos-hardware.nixosModules.common-gpu-amd
    nixos-hardware.nixosModules.common-pc
    nixos-hardware.nixosModules.common-pc-hdd

    ../../modules
    ./modules
  ];
}
