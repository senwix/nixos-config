{ pkgs, ... }:

{

  programs.bash =
    {
      enable = true;
      shellAliases =
        {
          c = "clear";
          ll = "ls -alh";
          la = "ls -a";
          ff = "fastfetch";
          bt = "sudo nixos-rebuild test";
          bs = "sudo nixos-rebuild switch";
          bsr = "sudo nixos-rebuild switch --rollback";
          sdl = "sudo rm -rf";
          snw = "sudo echo >";
          sudo-cursor = "sudo cursor --no-sandbox --user-data-dir /tmp/cursor_user_data";
        };
    };

    users.users."fan".shell = pkgs.bash;

}
