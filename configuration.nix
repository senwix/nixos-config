{ ... }:

{
  
  imports =
    [
      ./packages.nix
      ./shell.nix
      ./services.nix
      ./users.nix

      ./hyprland.nix
      ./plasma.nix

      ./hardware.nix
    ];

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  time.timeZone = "Europe/Helsinki";

  i18n.defaultLocale = "en_US.UTF-8";
  i18n.extraLocaleSettings =
    {
      LC_ADDRESS = "en_US.UTF-8";
      LC_IDENTIFICATION = "en_US.UTF-8";
      LC_MEASUREMENT = "en_US.UTF-8";
      LC_MONETARY = "en_US.UTF-8";
      LC_NAME = "en_US.UTF-8";
      LC_NUMERIC = "en_US.UTF-8";
      LC_PAPER = "en_US.UTF-8";
      LC_TELEPHONE = "en_US.UTF-8";
      LC_TIME = "en_US.UTF-8";
    };

  security.rtkit.enable = true;

  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  nixpkgs.config =
    {
      allowUnfree = true;
      warnUndeclaredOptions = true;
    };

  networking.hostName = "nixos";
  networking.networkmanager.enable = true;

  system.stateVersion = "25.11";

}
