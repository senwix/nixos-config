{ ... }:

{

  services =
    {
      xserver.enable = false;

      displayManager.sddm.wayland.enable = true;
      displayManager.sddm.enable = true;

      printing.enable = false;

      flatpak.enable = true;
      
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
