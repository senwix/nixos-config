{ pkgs, ... }:

{

  programs.hyprland = {
    enable = true;
    xwayland.enable = true;
  };
  
  environment.systemPackages = with pkgs;
    [
      brightnessctl
      gsimplecal
      hyprcursor
      hyprland
      hyprland-protocols
      hyprland-qtutils
      hyprpaper
      hyprpicker
      hyprshot
      networkmanagerapplet
      nerd-fonts.jetbrains-mono
      pavucontrol
      pulseaudioFull
      slurp
      waybar
      wlogout
      wofi
    ];

    xdg.portal = {
      enable = true;
      extraPortals = [ pkgs.xdg-desktop-portal-hyprland ];
    };

}
