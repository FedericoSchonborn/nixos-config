{
  users = {
    mutableUsers = false;

    users.pi = {
      extraGroups = ["wheel"];
      isNormalUser = true;
      openssh.authorizedKeys.keys = [
        "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAINYBqBMxcmoTH5CHm6p3veSvH8QDQeyle8B/GkRgxRO7"
      ];
    };
  };

  home-manager.users.pi = import ./home.nix;
}
