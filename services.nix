{ ... }:

{

  services =
    {
      xserver.enable = false;

      displayManager.sddm.enable = true;

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