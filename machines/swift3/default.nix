{
  modulesPath,
  inputs,
  ...
}: {
  imports = [
    inputs.nixos-hardware.nixosModules.common-cpu-intel-kaby-lake
    inputs.nixos-hardware.nixosModules.common-gpu-intel
    inputs.nixos-hardware.nixosModules.common-pc-laptop
    inputs.nixos-hardware.nixosModules.common-pc-laptop-ssd

    ../../modules
    ./modules
  ];
}
