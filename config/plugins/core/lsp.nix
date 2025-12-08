{ pkgs, ... }:
{
  plugins = {
    lsp-format.enable = true;
    lsp = {
      enable = true;

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
