{
  fileSystems = {
    "/" = {
      device = "/dev/disk/by-label/NIXOS_SD";
      fsType = "ext4";
    };

    "/mount/Elements" = {
      device = "/dev/disk/by-label/Elements";
      fsType = "ext4";
    };
  };
}
