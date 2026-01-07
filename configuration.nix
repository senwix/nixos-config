{ config, pkgs, ... }:

{

  imports =
    [
      ./hardware-configuration.nix
      ./users-configuration.nix
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

  services.xserver = {
    enable = true;
    excludePackages = [ pkgs.xterm ];
    xkb = {
      layout = "us";
      variant = "";
    };
  };

  services.displayManager.sddm.enable = true;
  services.desktopManager.plasma6.enable = true;

  services.printing.enable = false;
  
  services.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
  };

  nixpkgs.config = {
    allowUnfree = true;
    warnUndeclaredOptions = true;
  };

  environment = {
    systemPackages = with pkgs;
    [
      alacritty
      brave
      code-cursor
      fastfetch
      neofetch
      nodejs
      telegram-desktop
    ];
    
    shellAliases =
    {
      sudo-cursor = "sudo cursor --no-sandbox --user-data-dir /tmp/cursor_user_data";
    };

    plasma6.excludePackages = with pkgs.kdePackages;
    [
      kate
      khelpcenter
      konsole
      plasma-browser-integration
    ];
  };

  system.stateVersion = "25.11";

}