{
  inputs ? import ./inputs.nix,
  system ? builtins.currentSystem or "unknown-system",
  pkgs ? inputs.nixpkgs.legacyPackages.${system},
}: {
  inherit (pkgs) hello;
}
