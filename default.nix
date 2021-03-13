# This file describes your repository contents.
# It should return a set of nix derivations
# and optionally the special attributes `lib`, `modules` and `overlays`.
# It should NOT import <nixpkgs>. Instead, you should take pkgs as an argument.
# Having pkgs default to <nixpkgs> is fine though, and it lets you use short
# commands such as:
#     nix-build -A mypackage

{ pkgs ? import <nixpkgs> { } }:

let thisNur = {
  # The `lib`, `modules`, and `overlay` names are special
  lib = import ./lib { inherit pkgs; }; # functions
  modules = import ./modules { inherit thisNur; }; # NixOS modules
  overlays = import ./overlays; # nixpkgs overlays

  clash-premium = pkgs.callPackage ./pkgs/clash-premium { };
  trojan = pkgs.callPackage ./pkgs/trojan { };
  godns = pkgs.callPackage ./pkgs/godns { };
  dpt-rp1-py = pkgs.callPackage ./pkgs/dpt-rp1-py { };
  activate-dpt = pkgs.callPackage ./pkgs/activate-dpt { };
  musicbox = pkgs.callPackage ./pkgs/musicbox { };
  vlmcsd = pkgs.callPackage ./pkgs/vlmcsd { };
};
in
thisNur
