{pkgs, ...}: {
  users = {
    defaultUserShell = pkgs.zsh;
    mutableUsers = false;
  };
}
