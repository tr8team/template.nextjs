{ pkgs, packages }:
with packages;
{
  system = [
    coreutils
    sd
    bash
    findutils
  ];

  dev = [
    pls
    git
    yq-go
    jq
  ];

  infra = [
  ];

  main = [
    infisical
    bun
  ];

  lint = [
    # core
    treefmt
    gitlint
    shellcheck
    sg
  ];

  ci = [
    node
    sg
    npm
    yq-go
    jq
  ];

}
