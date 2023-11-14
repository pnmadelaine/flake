{
  inputs ? import ./inputs.nix,
  systems ? import ./systems.nix,
  utils ? import ./utils.nix {inherit inputs systems;},
}: let
  inherit (utils) eachSystem;
in {
  packages = eachSystem (system: import ./packages.nix {inherit inputs system;});
  devShells = eachSystem (system: import ./devshells.nix {inherit inputs system;});
  templates.default = {
    path = ./..;
    description = "❄";
  };
}
