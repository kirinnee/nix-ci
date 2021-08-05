FROM nixos/nix:2.3.12
RUN nix-env -i git bash cachix
