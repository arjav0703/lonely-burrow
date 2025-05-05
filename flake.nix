{
  description = "My Home Computer";
  inputs = {
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    nvf.url = "github:notashelf/nvf";
    stylix.url = "github:danth/stylix";
    wakatime-ls.url = "github:mrnossiom/wakatime-ls";
    wakatime-ls.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = {nixpkgs, ...} @ inputs: let
    system = "x86_64-linux";
    host = "lonely-burrow";
    profile = "intel";
    username = "arjav";
    pkgs = import nixpkgs {inherit system;};
  in {
    nixosConfigurations = {
      amd = nixpkgs.lib.nixosSystem {
        inherit system;
        specialArgs = {
          inherit inputs;
          inherit username;
          inherit host;
          inherit profile;
        };
        modules = [
          ./profiles/amd
          {
            environment.systemPackages = [
              inputs.wakatime-ls.packages.${pkgs.system}.default
            ];
          }
        ];
      };
      nvidia = nixpkgs.lib.nixosSystem {
        inherit system;
        specialArgs = {
          inherit inputs;
          inherit username;
          inherit host;
          inherit profile;
        };
        modules = [
          ./profiles/nvidia
          {
            environment.systemPackages = [
              inputs.wakatime-ls.packages.${pkgs.system}.default
            ];
          }
        ];
      };
      nvidia-laptop = nixpkgs.lib.nixosSystem {
        inherit system;
        specialArgs = {
          inherit inputs;
          inherit username;
          inherit host;
          inherit profile;
        };
        modules = [
          ./profiles/nvidia-laptop
          {
            environment.systemPackages = [
              inputs.wakatime-ls.packages.${pkgs.system}.default
            ];
          }
        ];
      };
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
      vm = nixpkgs.lib.nixosSystem {
        inherit system;
        specialArgs = {
          inherit inputs;
          inherit username;
          inherit host;
          inherit profile;
        };
        modules = [
          ./profiles/vm
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
