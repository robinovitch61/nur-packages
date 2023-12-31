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
    i686-linux = "1av1fy18md1kaj29dm2w9dgf21zl98q7y8f0n3z3lacyqqqmiz33";
    x86_64-linux = "1rq964360l69gpkvkf9gljsadg2hmlvpvqp4j6xva4zi9xvhwrqd";
    aarch64-linux = "144spfab4yj3vifhcnp28dp6fvk7qvaz15prkh7hbfi1pk9h9979";
    x86_64-darwin = "0smjx1s5mwmc95gxmw16lvgk3z0qz4p3hrv8zc58yxxm9n7y5lb8";
    aarch64-darwin = "0smjx1s5mwmc95gxmw16lvgk3z0qz4p3hrv8zc58yxxm9n7y5lb8";
  };

  urlMap = {
    i686-linux = "https://github.com/robinovitch61/goreleaser-testing/releases/download/v0.36.0/goreleaser-testing_0.36.0_Linux_i386.tar.gz";
    x86_64-linux = "https://github.com/robinovitch61/goreleaser-testing/releases/download/v0.36.0/goreleaser-testing_0.36.0_Linux_x86_64.tar.gz";
    aarch64-linux = "https://github.com/robinovitch61/goreleaser-testing/releases/download/v0.36.0/goreleaser-testing_0.36.0_Linux_arm64.tar.gz";
    x86_64-darwin = "https://github.com/robinovitch61/goreleaser-testing/releases/download/v0.36.0/goreleaser-testing_0.36.0_Darwin_all.tar.gz";
    aarch64-darwin = "https://github.com/robinovitch61/goreleaser-testing/releases/download/v0.36.0/goreleaser-testing_0.36.0_Darwin_all.tar.gz";
  };
in
pkgs.stdenv.mkDerivation {
  pname = "goreleaser-testing";
  version = "0.36.0";
  src = fetchurl {
    url = urlMap.${system};
    sha256 = shaMap.${system};
  };

  sourceRoot = ".";

  nativeBuildInputs = [ installShellFiles ];

  installPhase = ''
    mkdir -p $out/bin
    cp -vr ./goreleaser-testing $out/bin/goreleaser-testing
  '';

  system = system;

  meta = {
    description = "Goreleaser testing description";
    homepage = "https://github.com/robinovitch61/goreleaser-testing";
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
