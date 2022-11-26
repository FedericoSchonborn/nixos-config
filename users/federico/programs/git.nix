{pkgs, ...}: {
  programs.git = {
    enable = true;
    package = pkgs.gitFull;
    userName = "Federico Damián Schonborn";
    userEmail = "fdschonborn@gmail.com";
    aliases.amend = "commit --amend";

    signing = {
      key = "193F70F15C9AB0A0";
      signByDefault = true;
    };

    extraConfig = {
      core.editor = "nano";
      init.defaultBranch = "main";
      push.gpgSign = "if-asked";
      form.signOff = "true";
    };
  };
}
