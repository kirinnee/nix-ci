{ nixpkgs ? import <nixpkgs> { } }:
let pkgs = import ./packages.nix { inherit nixpkgs; }; in
with pkgs;
{
  minimal = [
    docker
    pls
    git
    coreutils
  ];
  lint = [
    gitlint
    pre-commit
    nixpkgs-fmt
    prettier
    sg # for linting gitlint file
    shfmt
    shellcheck
    hadolint
  ];
  cicd = [
    docker
    sd
    coreutils
  ];
  releaser = [
    pnpm
    sg
    prettier
  ];
}
