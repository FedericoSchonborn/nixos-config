{pkgs, ...}: {
  imports = [
    ./firefox
    ./vscode
  ];

  programs = {
    direnv = {
      enable = true;
      enableZshIntegration = true;
      nix-direnv.enable = true;
    };

    gh = {
      enable = true;
      enableGitCredentialHelper = true;
      settings.git_protocol = "ssh";
    };

    git = {
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
        core.editor = "${pkgs.nur.repos.federicoschonborn.commit}/bin/re.sonny.Commit";
        init.defaultBranch = "main";
        push.gpgSign = "if-asked";
        form.signOff = "true";
      };
    };
  };
}
