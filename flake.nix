{
  description = "gvaibhav1734's modular NixOS configuration";

  inputs = {
    nixpkgs = {
      url = "github:NixOS/nixpkgs/nixos-24.11";
    };
    home-manager = {
      url = "github:nix-community/home-manager/release-24.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    zen-browser.url = "github:0xc000022070/zen-browser-flake";
    nix-alien.url = "github:thiagokokada/nix-alien";
  };

  outputs = inputs@{ 
    self, 
    nixpkgs,
    home-manager,
    zen-browser,
    nix-alien,
    ...
  }: {
    nixosConfigurations = {
      vivobook-s15 = let
        username = "gvaibhav1734";
        system = "x86_64-linux";
        specialArgs = {inherit username zen-browser system nix-alien;};
      in
        nixpkgs.lib.nixosSystem {
          inherit specialArgs;
          system = "${system}";
          modules = [
            ./hosts/vivobook-s15
            home-manager.nixosModules.home-manager
            {
              home-manager.useGlobalPkgs = true;
              home-manager.useUserPackages = true;

              home-manager.extraSpecialArgs = inputs // specialArgs;
              home-manager.users.${username} = import ./users/${username}/home.nix;
            }
          ];
        };

      mi-notebook-s15 = let
        username = "gvaibhav1734";
        system = "x86_64-linux";
        specialArgs = {inherit username zen-browser system nix-alien;};
      in
        nixpkgs.lib.nixosSystem {
          inherit specialArgs;
          system = "${system}";
          modules = [
            ./hosts/mi-notebook-s15
            home-manager.nixosModules.home-manager
            {
              home-manager.useGlobalPkgs = true;
              home-manager.useUserPackages = true;

              home-manager.extraSpecialArgs = inputs // specialArgs;
              home-manager.users.${username} = import ./users/${username}/home.nix;
            }
          ];
        };

    };
  };
}

