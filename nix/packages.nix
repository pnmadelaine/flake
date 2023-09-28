{
  sources ? import ./sources.nix,
  system ? builtins.currentSystem or "unknown-system",
  pkgs ? sources.nixpkgs.legacyPackages.${system},
}: {
  inherit (pkgs) hello;
}
