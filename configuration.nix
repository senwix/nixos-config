{ config, pkgs, ... }:

{

  imports =
    [
      ./hardware-configuration.nix
      ./users.nix
    ];

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  networking.hostName = "nixos";

  networking.networkmanager.enable = true;

  time.timeZone = "Europe/Helsinki";

  i18n.defaultLocale = "en_US.UTF-8";

  i18n.extraLocaleSettings = {
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

  services.xserver.enable = true;

  services.displayManager.sddm.enable = true;
  services.desktopManager.plasma6.enable = true;

  services.xserver.xkb = {
    layout = "us";
    variant = "";
  };

  services.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
  };

  nixpkgs.config.allowUnfree = true;

  environment = {
    systemPackages = with pkgs; [
      alacritty
      brave
      code-cursor
      fastfetch
      neofetch
      nodejs
      telegram-desktop
    ];
    
    shellAliases = {
      sudo-cursor = "sudo cursor --no-sandbox --user-data-dir /tmp/cursor_user_data";
    };

    plasma6.excludePackages = [
      pkgs.kdePackages.konsole
      pkgs.kdePackages.kate
      pkgs.kdePackages.kwalletmanager
      pkgs.kdePackages.khelpcenter
      pkgs.xterm
      pkgs.cups
    ];
  };

  system.stateVersion = "25.11";

}