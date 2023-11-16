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
    i686-linux = "0afm3gwy1sq1gy99sv1822i2qgi57bnbr1bgh2gj74imkxiv6km2";
    x86_64-linux = "11qwx4rmwwrrvjivjwz4ypc2c5l0mq8vd36c2w76hvjm4096q3m8";
    aarch64-linux = "07xg3ws8898gdh8hxmqxzq3wlm96db1wkddmhlc9vvr1080jq4xz";
    x86_64-darwin = "1qf6qsfxy2az0z6q9avki60pfw4w8jgan3vidajr2mnlp69bj8k4";
    aarch64-darwin = "1qf6qsfxy2az0z6q9avki60pfw4w8jgan3vidajr2mnlp69bj8k4";
  };

  urlMap = {
    i686-linux = "https://github.com/robinovitch61/goreleaser-testing/releases/download/v0.19.0/goreleaser-testing_0.19.0_Linux_i386.tar.gz";
    x86_64-linux = "https://github.com/robinovitch61/goreleaser-testing/releases/download/v0.19.0/goreleaser-testing_0.19.0_Linux_x86_64.tar.gz";
    aarch64-linux = "https://github.com/robinovitch61/goreleaser-testing/releases/download/v0.19.0/goreleaser-testing_0.19.0_Linux_arm64.tar.gz";
    x86_64-darwin = "https://github.com/robinovitch61/goreleaser-testing/releases/download/v0.19.0/goreleaser-testing_0.19.0_Darwin_all.tar.gz";
    aarch64-darwin = "https://github.com/robinovitch61/goreleaser-testing/releases/download/v0.19.0/goreleaser-testing_0.19.0_Darwin_all.tar.gz";
  };
in
pkgs.stdenv.mkDerivation {
  pname = "goreleaser-testing";
  version = "0.19.0";
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
    license = lib.licenses.MIT;

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
