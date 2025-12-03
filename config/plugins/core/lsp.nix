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

  lsp = {
    servers = {
      "*" = {
        enable = true;
        config = {
          capabilities = {
            textDocument = {
              semanticTokens = {
                multilineTokenSupport = true;
              };
            };
          };
          root_markers = [
            ".git"
          ];
        };
      };

      nixd = {
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

      omnisharp.enable = true;
      roslyn_ls = {
        enable = true;
      };

      clangd = {
        enable = true;
        config = {
          cmd = [
            "clangd"
            "--background-index"
          ];
          filetypes = [
            "c"
            "cpp"
          ];
          root_markers = [
            "compile_commands.json"
            "compile_flags.txt"
          ];
        };
      };
      lua_ls = {
        enable = true;
      };
    };
  };
}
