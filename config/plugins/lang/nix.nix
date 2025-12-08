{ pkgs, ... }:
{
  lsp.servers.nixd = {
    enable = true;
    config = {
      nixpkgs = {
        expr = "import <nixpkgs> { }";
      };
      formatting = {
        command = [ "${pkgs.nixpkgs-fmt}/bin/nixpkgs-fmt" ];
      };
    };
  };
}
