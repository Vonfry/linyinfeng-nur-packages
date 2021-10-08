{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    (flake-utils.lib.eachDefaultSystem (system:
      let
        importPkgs = p: import p {
          inherit system;
          config = { allowUnfree = true; };
        };
        pkgs = importPkgs nixpkgs;
        inherit (pkgs) lib;

        sources = pkgs.callPackage ./pkgs/_sources/generated.nix { };
        packages = import ./pkgs
          {
            inherit pkgs sources;
          } // {
          # only include updater
          updater = pkgs.callPackage ./pkgs/updater { };
        };
        platformFilter = sys: p:
          if p.meta ? platforms
          then pkgs.lib.elem sys p.meta.platforms
          else true;
        filteredPackages = pkgs.lib.filterAttrs (_: platformFilter system) packages;

        mkApp = drvName: cfg:
          if self.packages.${system} ? ${drvName}
          then {
            "${drvName}" = flake-utils.lib.mkApp ({ drv = self.packages.${system}.${drvName}; } // cfg);
          }
          else { };
      in
      {
        inherit sources;
        packages = filteredPackages;
        apps =
          mkApp "activate-dpt" { } //
          mkApp "clash-for-windows" { name = "cfw"; } //
          mkApp "clash-premium" { } //
          mkApp "dpt-rp1-py" { name = "dptrp1"; } //
          mkApp "godns" { } //
          mkApp "icalingua" { } //
          mkApp "telegram-send" { } //
          mkApp "trojan" { } //
          mkApp "updater" { } //
          mkApp "vlmcsd" { } //
          mkApp "wemeet" { name = "wemeetapp"; };

        checks = flake-utils.lib.flattenTree {
          packages = pkgs.lib.recurseIntoAttrs self.packages.${system};
        };
        devShell =
          let
            scripts = pkgs.callPackage ./scripts { };
            simple = pkgs.mkShell {
              packages = [
                # currently nothing
              ];
            };
            withUpdater = pkgs.mkShell {
              inputsFrom = [
                simple
                self.packages.${system}.updater.env
              ];
              packages = [
                pkgs.nixpkgs-fmt
                pkgs.cabal-install
                pkgs.ormolu
                pkgs.nix-linter
                pkgs.fd
              ] ++ (with scripts; [
                update
                lint
              ]);
            };
          in
          if (self.packages.${system} ? updater) then withUpdater else simple;
      })) //
    {
      lib = import ./lib { inherit (nixpkgs) lib; };
      nixosModules = import ./modules;
      overlays = {
        linyinfeng = final: prev: {
          linyinfeng = self.packages.${final.system};
        };
        singleRepoNur = final: prev: {
          nur = prev.lib.recursiveUpdate prev.nur {
            repos.linyinfeng = self.packages.${final.system};
          };
        };
      } // import ./overlays;
    };
}
