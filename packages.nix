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
          git
          nmap
          nodejs
          obs-studio
          obsidian
          telegram-desktop
          vesktop
          virtualbox

          kdePackages.okular
          kdePackages.dolphin
          kdePackages.plasma-systemmonitor
          kdePackages.elisa
          kdePackages.dragon
          kdePackages.gwenview
          kdePackages.ark
          kdePackages.discover
        ];
    };

}
