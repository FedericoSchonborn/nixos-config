{
  imports = [
    ../.
  ];

  users.users.casa = {
    description = "Casa";
    extraGroups = [ "networkmanager" "wheel" ];
    hashedPassword = "$6$6ANtjSfzpNEpD8eo$fihU5EQqXoT15JTuRw6eHcLZNsSeqeSfULhoHYg11tM.8JVreLzOmw0r.ox4Sehuf9gzEYk0PQK02Qe/g2v9D0";
    isNormalUser = true;
  };

  home-manager.users.casa = import ./home.nix;
}
