{ pkgs, atomi, atomi_classic, pkgs-oct-01-23 }:
let
  all = {
    atomipkgs_classic = (
      with atomi_classic;
      {
        inherit
          sg;
      }
    );
    atomipkgs = (
      with atomi;
      {
        inherit
          infisical
          pls;
      }
    );
    oct-01-23 = (
      with pkgs-oct-01-23;
      {
        inherit
          coreutils
          findutils
          sd
          bash
          git
          yq-go
          jq
          wrangler
          bun

          # lint
          treefmt
          gitlint
          shellcheck

          #infra
          ;
        node = nodejs_20;
        helm = kubernetes-helm;
        eslint = nodePackages_latest.eslint;
      }
    );
  };
in
with all;
atomipkgs //
atomipkgs_classic //
oct-01-23
