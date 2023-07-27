{ config, lib, pkgs, ... }:
{
  description = "Minigui - A minimal window manager based GUI.";

  services.xserver = {
  enable = true;
  windowManager.bspwm.enable = true;
  displayManager.defaultSession = "none+bspwm";
}
