{
  fileSystems =
    {

      "/boot/efi" =
        {
          device = "/dev/sda1";
          fsType = "vfat";
        };

      "/" =
        {
          device = "/dev/sda2";
          fsType = "ext4";
        };
    };

  swapDevices =
    [
      {
        device = "/swapfile";
        size = 8192;
      }
    ];
}
