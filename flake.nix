{
  description = "Minigui - A minimal window manager based GUI.";

  # Define flake inputs
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs";
  };

  # Define flake outputs
  outputs = { self, nixpkgs, services }: 
  {

    ###################
    # Set up services #
    ###################

    services.xserver = {
      enable = true;
      windowManager.bspwm.enable = true;
      displayManager.defaultSession = "none+bspwm";
      displayManager.lightdm.enable = true;
    };

    #####################
    # Add some packages #
    #####################

    packages = [ nixpkgs.alacritty nixpkgs.polybar ];    

  };
}
