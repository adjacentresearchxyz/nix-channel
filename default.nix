let
  sources = import ./nix/sources.nix;
  pkgs = import sources.nixpkgs {};
in {
  hello = pkgs.writeScriptBin "hello" ''
    #!${pkgs.stdenv.shell}

    echo "Hello from my personal Nix channel!"
  '';
}