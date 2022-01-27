{ sources, lib, mkYarnPackage }:

mkYarnPackage rec {
  inherit (sources.yacd) pname version src;

  installPhase = ''
    yarn build
    cp -r "deps/${pname}/public" $out
  '';

  distPhase = ''
    # do nothing
  '';

  packageJSON = ./package.json;
  yarnLock = ./yarn.lock;
  yarnNix = ./yarn.nix;

  meta = with lib; {
    homepage = "https://github.com/haishanh/yacd";
    description = "Yet Another Clash Dashboard";
    license = licenses.mit;
  };
}
  
