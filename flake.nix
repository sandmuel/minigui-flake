{
  description = "A minimal desktop environment."

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs";
  };

  outputs = { nixpkgs, ... }:

  let
    system = "x86_64-linux";

    pkgs = import nixpkgs {
      inherit system;
      config = { allowUnfree = true; };
    };

    lib = nixpkgs.lib;

  in {
    nixosConfigurations = {
      hostname = lib.nixosSystem {
        inherit system;
        modules = [ /etc/nixos/configuration.nix ];
      };
    };
  };
}
