{pkgs ? import <nixpkgs> {}}:

with pkgs.lib;
pkgs.buildGoModule { 
  name = "libgen-cli";
  # version = ""
  src = pkgs.fetchFromGitHub {
    owner = "TonyChG";
    repo = "libgen-cli";
    rev = "f8f65574fd70a01d005baf98c2781b6ea7fb0933";
    sha256="RK2rFPr2Hb3TQF5AS74OusugRq/7E6xKAPQf8OlHbpk=";
  };
  vendorSha256 = "uHu0BfF26COL/S/yswdcVJVYwozl8Pl3RXHSctYQi+s=";
  doInstallCheck = false;
  checkPhase = false;
}
