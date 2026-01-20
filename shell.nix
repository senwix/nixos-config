{ pkgs, ... }:

{

  programs.zsh =
    {
      enable = true;
      shellAliases =
        {
          c = "clear";
          a = "ls -a";
          ff = "fastfetch";
          bt = "sudo nixos-rebuild test";
          bs = "sudo nixos-rebuild switch";
          bsr = "sudo nixos-rebuild switch --rollback";
          dl = "rm -rf";
          sdl = "sudo rm -rf";
          nw = "touch";
          snw = "sudo touch";
          ed = "nano";
          sed = "sudo nano";
          nxc = "/etc/nixos/";
          sudo-cursor = "sudo cursor --no-sandbox --user-data-dir /tmp/cursor_user_data";
        };
    };

    users.users."fan".shell = pkgs.zsh;
}
