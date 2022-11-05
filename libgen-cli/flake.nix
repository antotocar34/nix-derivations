{
  description = "libgen-cli";

  inputs.nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";

  outputs = {self, nixpkgs}: let
        pkgs = import nixpkgs { inherit system; };
        system = "x86_64-linux";
  in rec {
    packages."x86_64-linux".libgenSearch = pkgs.writeShellApplication {
      name = "libgen-cli search";
      text = ''
        ${pkgs.lib.getExe defaultPackage.${system}} search -o /home/carneca/Downloads "$@"
        '';
    };
    defaultPackage.${system}= import ./default.nix {inherit pkgs;};
    apps.${system}.default = {
      type = "app";
      program = "${pkgs.lib.getExe packages.${system}.libgenSearch}";
    };
  };
}

