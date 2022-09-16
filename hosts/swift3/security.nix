{
  security = {
    rtkit.enable = true;
    sudo.extraConfig = ''
      Defaults pwfeedback
    '';
  };
}
