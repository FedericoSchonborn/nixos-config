{
  imports = [
    ./binfmt.nix
    ./loader.nix
    ./plymouth.nix
  ];

  boot = {
    cleanTmpDir = true;
    extraModprobeConfig = ''
      options bluetooth disable_ertm=1
    '';
    tmpOnTmpfs = true;
  };
}
