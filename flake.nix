{
  description = "My Home Computer";
  inputs = {
   nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    nvf.url = "github:notashelf/nvf";
    stylix.url = "github:danth/stylix";
    wakatime-ls.url = "github:mrnossiom/wakatime-ls";
    wakatime-ls.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs =
    { nixpkgs, ... }@inputs:
    let
      system = "x86_64-linux";
      host = "lonely-burrow";
      profile = "intel";
      username = "arjav";
      pkgs = import nixpkgs { inherit system; };
    in
    {
      nixosConfigurations = {

        intel = nixpkgs.lib.nixosSystem {
          inherit system;
          specialArgs = {
            inherit inputs;
            inherit username;
            inherit host;
            inherit profile;
          };
          modules = [
            ./profiles/intel
            {
              environment.systemPackages = [
                inputs.wakatime-ls.packages.${pkgs.system}.default
              ];
            }
          ];
        };
      };
    };
}
