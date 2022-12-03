{
  modulesPath,
  inputs,
  ...
}: {
  imports = [
    inputs.nixos-hardware.nixosModules.common-cpu-amd
    # inputs.nixos-hardware.nixosModules.common-gpu-amd
    inputs.nixos-hardware.nixosModules.common-pc
    inputs.nixos-hardware.nixosModules.common-pc-hdd

    ../../modules
    ./modules
  ];
}
