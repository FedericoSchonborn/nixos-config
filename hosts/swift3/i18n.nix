{pkgs, ...}: {
  i18n.defaultLocale = "es_AR.UTF-8";
  time.timeZone = "America/Argentina/Buenos_Aires";
  services.xserver.layout = "latam";
  # Use the same keyboard layout in the virtual console.
  console.useXkbConfig = true;
  environment.systemPackages = with pkgs; [
    aspellDicts.es
    hunspellDicts.es-ar
  ];
}
