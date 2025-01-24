{
  description = "Esp-rs flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    utils.url = "github:numtide/flake-utils";
  };

  outputs =
    {
      self,
      nixpkgs,
      utils,
    }:
    utils.lib.eachDefaultSystem (
      system:
      let
        pkgs = import nixpkgs { inherit system; };
        esp-rs = pkgs.callPackage ./esp-rs.nix { };
      in
      {
        # defaultPackage = esp-rs;
        devShells.default = pkgs.mkShell {
          packages = [
            pkgs.espflash
            pkgs.cargo-generate
            esp-rs
          ];
          env = {};
        };
      }
    );
}
