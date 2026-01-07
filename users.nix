{ ... }:

{

  users.users."fan" =
    {
      isNormalUser = true;
      extraGroups =
        [
          "networkmanager"
          "wheel"
        ];
    };

}