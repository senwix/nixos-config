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

      shellAliases =
        {
          sudo-cursor = "sudo cursor --no-sandbox --user-data-dir /tmp/cursor_user_data";
        };

      plasma6.excludePackages = with pkgs.kdePackages;
        [
          kate
          khelpcenter
          konsole
          plasma-browser-integration
        ];
    };

}