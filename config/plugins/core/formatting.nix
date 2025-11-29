{ pkgs, ... }:
{
  plugins.conform-nvim = {
    enable = true;

    settings = {
      formatters_by_ft = {
        nix = [ "nixpkgs_fmt" ];
      };

      formatters = {
        nixpkgs_fmt = {
          command = "${pkgs.nixpkgs-fmt}/bin/nixpkgs-fmt";
        };
      };

      format_on_save = {
        lsp_format = "fallback";
        timeout_ms = 500;
      };
    };
  };
}
