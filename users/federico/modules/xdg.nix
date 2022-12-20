{config, ...}: {
  xdg.configFile."proton.conf".text = ''
    data = "${config.home.homeDirectory}/Proton"
    steam = "${config.home.homeDirectory}/.steam/steam/"
  '';
}
