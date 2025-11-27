{ pkgs, ... }:
{
  plugins = {
    treesitter = {

      enable = true;

      grammarPackages = with pkgs.vimPlugins.nvim-treesitter.builtGrammars; [
        bash
        json
        lua
        make
        markdown
        nix
        regex
        toml
        vim
        vimdoc
        xml
        yaml
      ];

      settings = {
        incremental_selection = {
          enable = true;
          keymaps = {
            init_selection = false;
            node_decremental = "grm";
            node_incremental = "grn";
            scope_incremental = "grc";
          };
        };

        indent.enable = true;
      };
    };

    treesitter-context.enable = true;
    treesitter-textobjects = {
      enable = true;
      settings = {
        select = {
          enable = true;
          keymaps = {
            af = "@function.outer";
            "if" = "@function.inner";

            ac = "@class.outer";
            ic = "@class.inner";

            ap = "@parameters.outer";
            ip = "@parameters.inner";

            ab = "@block.outer";
            ib = "@block.inner";
          };
        };

        move = {
          enable = true;
          goto_next_start = {
            "]f" = "@function.outer";
            "]c" = "@class.outer";
          };
          goto_next_end = {
            "]F" = "@function.outer";
            "]C" = "@class.outer";
          };
          goto_previous_start = {
            "[f" = "@function.outer";
            "[c" = "@class.outer";
          };
          goto_previous_end = {
            "[F" = "@function.outer";
            "[C" = "@class.outer";
          };
        };
      };
    };
  };
}
