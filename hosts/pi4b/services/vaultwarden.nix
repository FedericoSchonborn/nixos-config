{pkgs, ...}: {
  services.vaultwarden = {
    enable = true;
    backupDir = "/mount/Elements/Vaultwarden/Backup";
    config = {
      ROCKET_PORT = 2839;
      WEB_VAULT_ENABLED = true;
    };
  };
}
