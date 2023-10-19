{
  sources ? import ./sources.nix,
  system ? builtins.currentSystem or "unknown-system",
  pkgs ? sources.nixpkgs.legacyPackages.${system},
}: {
  default = pkgs.mkShell {
    packages = [pkgs.alejandra];
  };
}
