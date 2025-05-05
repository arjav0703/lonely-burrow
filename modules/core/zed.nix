{ pkgs, ... }:

let
  zed-fhs = pkgs.buildFHSEnv {
    name = "zed-fhs";
    targetPkgs = pkgs: with pkgs; [
      zed-editor
      # Optionally add other tools like git, curl, etc.
    ];
    runScript = "zeditor";
  };
in {
  home.packages = [
    zed-fhs
  ];
}
