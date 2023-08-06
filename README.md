# minigui-flake
Here's my NixOS flake for a minimal gui consisting of hyprland (compositer), and waybar (status bar), and to keep it minimal, the only apps included are alacritty (terminal emulator), and minigui-settings (settings app).

# installation
Run the following command:
`sudo nixos-rebuild --flake github:sandmuel/minigui-flake#nixos`
Currently requires experimental feature; flakes, to be enabled.
