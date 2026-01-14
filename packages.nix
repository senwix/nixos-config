{ pkgs, ...}:

{

  environment =
    {
      systemPackages = with pkgs;
        [
          alacritty
          audacity
          brave
          burpsuite
          code-cursor
          dirb
          fastfetch
          nmap
          nodejs
          obs-studio
          obsidian
          telegram-desktop
          vesktop
          virtualbox
        ];
    };

}
