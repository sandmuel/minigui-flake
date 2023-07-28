{
  description = "Minigui - A minimal window manager based GUI.";

  outputs = { self, nixpkgs, services }:
  {
    services.xserver = 
    {
      enable = true;
      windowManager.bspwm.enable = true;
      displayManager.defaultSession = "none+bspwm";
    };
  };
}
