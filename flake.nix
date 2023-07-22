{
  description = "Minigui - A minimal window manager based GUI.";
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };
  outputs = { self, nixpkgs }: {
    nixosConfigurations.Minigui = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [
        {
          # Enable the display server
          services.xserver.enable = true;

          # Enable the display manager
          services.xserver.displayManager.lightdm.enable = true;

          # Enable the window manager
          services.xserver.windowManager.bspwm.enable = true;

          # Enable picom compositor for window effects
          services.picom.enable = true;

          # Packages go here. there really shouldn't be much here, the goal is to only have near universal needs.
          environment.systemPackages = with pkgs; [
            alacritty
            polybar
            rofi
            #(import "${self}/my-settings-app.nix")
        }
      ];
    };
  };
}
