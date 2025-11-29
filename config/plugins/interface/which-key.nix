{
  plugins.which-key = {
    enable = true;

    settings = {
      preset = "helix";
      notify = true;
      keys = {
        scroll_down = "<c-d>";
        scroll_up = "<c-u>";
      };

      icons = {
        breadcrumb = "»";
        group = "+";
        separator = "➜"; # ➜
      };

      win = {
        border = "single";
        padding = [
          1
          2
        ];
      };
    };
  };

  extraConfigLua = ''
    -- Match which-key colors with lualine theme
    local colors = {
      bg = "#181616",
      fg = "#DBD0C6",
      gray = "#91A4AD",
      green = "#96C2A1",
      blue = "#86BFD0",
      orange = "#F9ADA0",
      pink = "#D9ADD4",
      red = "#D2696C",
      yellow = "#FFD7AA",
    }

    -- Main highlight groups
    vim.api.nvim_set_hl(0, "WhichKey", { fg = colors.green })
    vim.api.nvim_set_hl(0, "WhichKeyDesc", { fg = colors.fg })
    vim.api.nvim_set_hl(0, "WhichKeyGroup", { fg = colors.blue })
    vim.api.nvim_set_hl(0, "WhichKeySeparator", { fg = colors.gray })
    vim.api.nvim_set_hl(0, "WhichKeyValue", { fg = colors.pink })
    vim.api.nvim_set_hl(0, "WhichKeyNormal", { bg = colors.bg })
    vim.api.nvim_set_hl(0, "WhichKeyBorder", { fg = colors.gray, bg = colors.bg })
    vim.api.nvim_set_hl(0, "WhichKeyTitle", { fg = colors.green, bold = true })

    -- Icon colors
    vim.api.nvim_set_hl(0, "WhichKeyIcon", { fg = colors.blue })
    vim.api.nvim_set_hl(0, "WhichKeyIconGreen", { fg = colors.green })
    vim.api.nvim_set_hl(0, "WhichKeyIconBlue", { fg = colors.blue })
    vim.api.nvim_set_hl(0, "WhichKeyIconOrange", { fg = colors.orange })
    vim.api.nvim_set_hl(0, "WhichKeyIconRed", { fg = colors.red })
    vim.api.nvim_set_hl(0, "WhichKeyIconYellow", { fg = colors.yellow })
    vim.api.nvim_set_hl(0, "WhichKeyIconCyan", { fg = colors.blue })
    vim.api.nvim_set_hl(0, "WhichKeyIconPurple", { fg = colors.pink })
    vim.api.nvim_set_hl(0, "WhichKeyIconGrey", { fg = colors.gray })
  '';
}
