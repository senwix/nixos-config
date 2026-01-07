{ pkgs, ... }:

{

  environment.shellAliases =
    {
      ll = "ls -alh";
      la = "ls -a";
      c = "clear";
      e = "exit";
      bt = "sudo nixos-rebuild test";
      bb = "sudo nixos-rebuild build";
      bs = "sudo nixos-rebuild switch";
      sudo-cursor = "sudo cursor --no-sandbox --user-data-dir /tmp/cursor_user_data";
    };

    users.users."fan".shell = pkgs.bash;

}