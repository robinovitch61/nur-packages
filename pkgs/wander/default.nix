# This file was generated by GoReleaser. DO NOT EDIT.
# vim: set ft=nix ts=2 sw=2 sts=2 et sta
{
system ? builtins.currentSystem
, pkgs
, lib
, fetchurl
, installShellFiles
}:
let
  shaMap = {
    i686-linux = "0559xyy0vfb24fgiqj9s7sn7x0qvyzakzw0waigafmxvkbr583kp";
    x86_64-linux = "1xalg42x7qfcarn4malqm61vkc5jvg0wlzyx3zmfw94gh7xdqd3b";
    aarch64-linux = "1lbrw5dxfs4r815s90g7lllmgf6la2s1v730rqxhvqy5a62nva73";
    x86_64-darwin = "06gmg3pdzspfr52hiq8niblspfi7kms541z84pdyb7ymzijrv7nw";
    aarch64-darwin = "06gmg3pdzspfr52hiq8niblspfi7kms541z84pdyb7ymzijrv7nw";
  };

  urlMap = {
    i686-linux = "https://github.com/robinovitch61/wander/releases/download/v0.12.6/wander_0.12.6_Linux_i386.tar.gz";
    x86_64-linux = "https://github.com/robinovitch61/wander/releases/download/v0.12.6/wander_0.12.6_Linux_x86_64.tar.gz";
    aarch64-linux = "https://github.com/robinovitch61/wander/releases/download/v0.12.6/wander_0.12.6_Linux_arm64.tar.gz";
    x86_64-darwin = "https://github.com/robinovitch61/wander/releases/download/v0.12.6/wander_0.12.6_Darwin_all.tar.gz";
    aarch64-darwin = "https://github.com/robinovitch61/wander/releases/download/v0.12.6/wander_0.12.6_Darwin_all.tar.gz";
  };
in
pkgs.stdenv.mkDerivation {
  pname = "wander";
  version = "0.12.6";
  src = fetchurl {
    url = urlMap.${system};
    sha256 = shaMap.${system};
  };

  sourceRoot = ".";

  nativeBuildInputs = [ installShellFiles ];

  installPhase = ''
    mkdir -p $out/bin
    cp -vr ./wander $out/bin/wander
  '';

  system = system;

  meta = {
    description = "An efficient terminal application/TUI for interacting with your HashiCorp Nomad cluster.";
    homepage = "https://github.com/robinovitch61/wander";
    license = lib.licenses.mit;

    sourceProvenance = [ lib.sourceTypes.binaryNativeCode ];

    platforms = [
      "aarch64-darwin"
      "aarch64-linux"
      "i686-linux"
      "x86_64-darwin"
      "x86_64-linux"
    ];
  };
}
