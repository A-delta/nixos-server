{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-22.11";
    impermanence.url = "github:nix-community/impermanence";
  };

  # what will be produced (i.e. the build)
  outputs = { nixpkgs, ... }@inputs: {
    nixosConfigurations = {
      server = nixpkgs.lib.nixosSystem {
        packages = nixpkgs.legacyPackages.x86_64-linux;
        specialArgs = inputs;
        modules = [
          ./hosts/horus
        ];
      };
    };
  };
}
