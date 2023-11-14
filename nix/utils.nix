{
  inputs ? import ./inputs.nix,
  lib ? inputs.nixpkgs.lib,
  systems ? import ./systems.nix,
}: {
  eachSystem = lib.genAttrs systems;
}
