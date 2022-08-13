{ pkgs, ... }:

{
  programs.kdeconnect.enable = true;
  # Only required on GNOME.
  programs.kdeconnect.package = pkgs.gnomeExtensions.gsconnect;
}
