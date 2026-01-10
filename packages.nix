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
          davinci-resolve
          dirb
          fastfetch
          nmap
          nodejs
          obsidian
          telegram-desktop
        ];
    };

}
