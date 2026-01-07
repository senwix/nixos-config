{ pkgs, ...}:

{

  environment =
    {
      systemPackages = with pkgs;
        [
          alacritty
          brave
          code-cursor
          fastfetch
          neofetch
          nodejs
          telegram-desktop
        ];

      plasma6.excludePackages = with pkgs.kdePackages;
        [
          kate
          khelpcenter
          konsole
          plasma-browser-integration
        ];
    };

}