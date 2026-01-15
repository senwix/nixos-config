{ ... }:

{

  services =
    {
      xserver.enable = false;

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
          wireplumber.extraConfig = {
            "10-disable-headset" = {
              "wireplumber.settings" = {
                "bluetooth.autoswitch-to-headset-profile" = false;
              };
              "monitor.alsa.rules" = [
                {
                  matches = [
                    {
                      "node.name" = "~alsa_output.pci-0000_00_1f.3.*";
                    }
                  ];
                  actions = {
                    update-props = {
                      "audio.channels" = 2;
                      "audio.position" = ["FL" "FR"];
                    };
                  };
                }
              ];
            };
          };
        };
    };

}
