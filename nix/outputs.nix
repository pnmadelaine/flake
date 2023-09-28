{
  sources ? import ./sources.nix,
  systems ? import ./systems.nix,
  utils ? import ./utils.nix {inherit sources;},
}: let
  eachSystem = utils.genAttrs systems;
in {
  packages = eachSystem (system: import ./packages.nix {inherit sources system;});
  devShells = eachSystem (system: import ./devshells.nix {inherit sources system;});
}
