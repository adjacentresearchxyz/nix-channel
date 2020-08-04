let
  sources = import ./nix/sources.nix;
  pkgs = import sources.nixpkgs {};
  cmd = pkgs.runCommand "hello" {} ''
    echo "Hello world"
  '';
in cmd