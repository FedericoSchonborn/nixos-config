{ pkgs, ... }:

{
  environment = {
    # Backup etc files instead of failing to activate generation if a file
    # already exists in /etc.
    etcBackupExtension = ".backup";

    packages = with pkgs; [
      nano
    ];
  };
}
