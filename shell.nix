{ pkgs ? import <nixpkgs> {} }:
pkgs.mkShell {
  buildInputs = with pkgs; [
    helm-docs
    kubernetes-helm
  ];
}
