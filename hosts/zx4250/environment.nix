{pkgs, ...}: {
  environment = {
    localBinInPath = true;

    systemPackages = with pkgs; [
      greybird
      elementary-xfce-icon-theme
    ];
  };
}
