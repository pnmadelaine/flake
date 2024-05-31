{
  inputs ? import ./inputs.nix,
  system ? builtins.currentSystem or "unknown-system",
  pkgs ? inputs.nixpkgs.legacyPackages.${system},
}:
{
  default = pkgs.mkShell { packages = [ pkgs.nixfmt-rfc-style ]; };
}
