{ config, ... }:
let
  buildToggleFn = opt: ''
    function()
      vim.o.${opt} = not vim.o.${opt}
      vim.notify("toggled ${opt}", vim.log.levels.INFO)
    end
  '';
in
{
  plugins.which-key.settings.spec = [
    [
      {
        __unkeyed = "<leader>t";
        group = "toggles";
      }
    ]
  ];

  keymaps = [
    {
      key = "<leader>tf";
      action.__raw = ''
        function()
          local conform = require('conform')
          if conform.format_on_save then
            conform.format_on_save = false
            vim.notify("Format on save disabled", vim.log.levels.INFO)
          else
            conform.format_on_save = {
              lsp_format = "fallback",
              timeout_ms = 500,
            }
            vim.notify("Format on save enabled", vim.log.levels.INFO)
          end
        end
      '';
      options = {
        desc = "toggle format on save";
      };
    }

    {
      mode = "n";
      key = "<leader>tr";
      action.__raw = buildToggleFn "relativenumber";
      options = {
        desc = "toggle relative line numbers";
      };
    }
  ];
}
