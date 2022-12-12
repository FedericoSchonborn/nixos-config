{pkgs, ...}: {
  boot = {
    kernelPackages = pkgs.linuxPackages_latest;
    supportedFilesystems = ["exfat" "ntfs"];
    cleanTmpDir = true;
    tmpOnTmpfs = true;

    loader = {
      efi = {
        canTouchEfiVariables = true;
        efiSysMountPoint = "/boot";
      };

      systemd-boot.enable = true;
    };

    plymouth.enable = true;
  };
}
