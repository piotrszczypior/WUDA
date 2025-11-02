{
  description = "Flake with devops tooling";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.05";
  };

  outputs = { self, nixpkgs }: {
    packages.x86_64-linux.default = let
      pkgs = import nixpkgs { system = "x86_64-linux"; };
    in pkgs.mkShell {
      name = "act-shell";
      buildInputs = [
        pkgs.act
        pkgs.docker
        pkgs.docker-compose 
      ];
    };
  };
}
