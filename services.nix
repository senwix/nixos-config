{ pkgs, ... }

{

  services =
    {
      xserver =
        {
          enable = true;
          excludePackages =
            [
              pkgs.xterm
            ];
          xkb =
            {
              layout = "us";
              variant = "";
            };
        };

      displayManager.sddm.enable = true;
      desktopManager.plasma6.enable = true;

      printing.enable = false;
      
      pulseaudio.enable = false;
      pipewire =
        {
          enable = true;
          alsa.enable = true;
          alsa.support32Bit = true;
          pulse.enable = true;
        };
    };

}