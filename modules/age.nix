{
  age = {
    identityPaths = [
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
