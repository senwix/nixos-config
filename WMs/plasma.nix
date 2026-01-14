{ pkgs, ... }:

{

   services.desktopManager.plasma6.enable = true;

   environment.plasma6.excludePackages = with pkgs.kdePackages;
    [
      kate
      khelpcenter
      konsole
      plasma-browser-integration
    ];

    environment.systemPackages = with pkgs.kdePackages;
      [
        discover
        dragon
        kdenlive
        kwrited
      ];

}