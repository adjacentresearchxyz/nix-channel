let
  sources = import ./nix/sources.nix;

  helloBin = pkgs.writeShellScriptBin "hello" ''
    echo "Hello from the Nix channel overlay!"
  '';

  helloOverlay = self: super: {
    hello = helloBin;
  };

  pkgs = import sources.nixpkgs {
    overlays = [ helloOverlay ];
  };
in {
  nixpkgs = pkgs;
}