{
  users.users.casa = {
    description = "Casa";
    extraGroups = ["networkmanager" "wheel"];
    hashedPassword = "$6$oHWjbl92P9uDRrIw$L0gNMGqrQc2KNsgsphO/gTvfgyCptgSVVLiZXq42PFr7pvQUZBiMGLldS6oIHDoVQ.KMgyijVZaeAzqoaXddW0";
    isNormalUser = true;
  };

  home-manager.users.casa = import ./home.nix;
}
