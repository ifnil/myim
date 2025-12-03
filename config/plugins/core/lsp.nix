{ pkgs, ... }:
{
  plugins = {
    lsp-format.enable = true;
    lsp = {
      enable = true;

      servers = {
        nixd = {
          enable = true;
          settings = {
            nixpkgs = {
              expr = "import <nixpkgs> { }";
            };
            formatting = {
              command = [ "${pkgs.nixpkgs-fmt}/bin/nixpkgs-fmt" ];
            };
          };
        };

        omnisharp.enable = true;
        roslyn_ls = {
          enable = true;
          settings = { };
        };
      };

      keymaps = {
        silent = true;
        diagnostic = {
          "<leader>cd" = "open_float";
          "[d" = "goto_prev";
          "]d" = "goto_next";
        };

        lspBuf = {
          "gd" = "definition";
          "gD" = "declaration";
          "gr" = "references";
          "gI" = "implementation";
          "gy" = "type_definition";
          "K" = "hover";
          "<leader>ca" = "code_action";
          "<leader>cr" = "rename";
        };
      };
    };
  };
}
