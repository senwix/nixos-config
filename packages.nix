{ pkgs, ...}:

{

  environment =
    {
      systemPackages = with pkgs;
        [
          alacritty
          brave
          burpsuite
          code-cursor
          dirb
          fastfetch
          nmap
          nodejs
          obsidian
          telegram-desktop
        ];
    };

}
