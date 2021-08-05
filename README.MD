# Nix CI Docker Image

Nix CI Image for docker based on alpine

Includes the following binaries:

- Nix (and all it derivatives)
- Tar
- Git
- Bash
- Cachix

# Contributing

## Pre-requisite

- [nix](https://nixos.org/download.html) (>= 2.3.12)
- [direnv](https://direnv.net/) (>= 2.28.0)
- [cachix](https://docs.cachix.org/installation.html) (>= 0.6.0)
- [docker](https://hub.docker.com/) (>= 20.10.7)

## Commit Conventions

We have strict conventions on our commit messages as it is used completely in our
release strategy and automation pipeline. The convention is documented
[here](CommitConventions.md)

## Get Started

1. Enter folder with `nix`, `direnv` and `docker`
