{pkgs, ...}: {
  services.vaultwarden = {
    enable = true;
    webVaultPackage = pkgs.vaultwarden-vault;
    backupDir = "/media/Elements/Vaultwarden";
  };
}
