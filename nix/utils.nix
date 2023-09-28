{sources ? import ./sources.nix}: let
  inherit
    (builtins)
    listToAttrs
    ;
in rec {
  nameValuePair = name: value: {inherit name value;};
  genAttrs = names: f: listToAttrs (map (n: nameValuePair n (f n)) names);
}
