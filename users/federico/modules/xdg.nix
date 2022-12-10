{
  xdg.configFile."autostart/ssh-add.desktop".text = ''
    [Desktop Entry]
    Type=Application
    Name=ssh-add
    Exec=ssh-add -q
  '';
}
