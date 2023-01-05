{config, ...}: {
  age = {
    identityPaths = [
      "${config.users.users.federico.home}/.ssh/id_ed25519"
      "/mnt/Expansion/Archivos/ssh/id_ed25519"
    ];

    secrets = {
      wireless-env = {
        name = "wireless.env";
        file = ../secrets/wireless-env.age;
      };
    };
  };
}
