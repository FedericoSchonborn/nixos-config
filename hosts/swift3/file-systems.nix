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

    "/mnt/Expansion" = {
      device = "/dev/disk/by-label/Expansion";
      fsType = "ext4";
    };
  };
}
