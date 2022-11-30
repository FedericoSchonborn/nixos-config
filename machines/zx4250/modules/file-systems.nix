{
  fileSystems = {
    "/boot" = {
      device = "/dev/sda1";
      fsType = "vfat";
    };

    "/" = {
      device = "/dev/sda2";
      fsType = "ext4";
    };
  };
}
