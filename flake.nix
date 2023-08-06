{

  description = "A minimal desktop environment.";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs = {nixpkgs, ...}: {
    nixosConfigurations = {
      nixos = nixpkgs.lib.nixosSystem {
        modules = [
          ./nixos/configuration.nix
          {
            nixpkgs.system = "x86_64-linux";
          }
        ];
      };
    };
  };
}
