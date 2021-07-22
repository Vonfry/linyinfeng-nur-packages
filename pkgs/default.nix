{ pkgs }:

let
  sources = pkgs.callPackage ../sources.nix { };
in
{
  updater = pkgs.callPackage ./updater { };
  clash-premium = pkgs.callPackage ./clash-premium { inherit sources; };
  godns = pkgs.callPackage ./godns { inherit sources; };
  dpt-rp1-py = pkgs.callPackage ./dpt-rp1-py { inherit sources; };
  activate-dpt = pkgs.callPackage ./activate-dpt { };
  trojan = pkgs.callPackage ./trojan { inherit sources; };
  vlmcsd = pkgs.callPackage ./vlmcsd { inherit sources; };
}
