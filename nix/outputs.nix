{
  sources ? import ./sources.nix,
  systems ? import ./systems.nix,
  utils ? import ./utils.nix {inherit sources systems;},
}: let
  inherit (utils) eachSystem;
in {
  packages = eachSystem (system: import ./packages.nix {inherit sources system;});
  devShells = eachSystem (system: import ./devshells.nix {inherit sources system;});
  templates.default = {
    path = ./..;
    description = "❄";
  };
}
