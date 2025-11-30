{
  plugins.lualine = {
    enable = true;
    settings = {
      options = {
        component_separators = {
          left = "|";
          right = "|";
        };

        section_separators = {
          left = "";
          right = "";
        };
      };
    };
  };

  extraConfigLua = ''
    -- Custom lualine theme using global color palette
    local colors = _G.theme.colors

    local custom_theme = {
      normal = {
        a = { bg = colors.bg, fg = colors.green, gui = "bold" },
        b = { bg = colors.green, fg = colors.bg },
        c = { bg = colors.bg, fg = colors.gray },
      },
      insert = {
        a = { bg = colors.blue, fg = colors.bg, gui = "bold" },
        b = { bg = colors.bg, fg = colors.blue },
        c = { bg = colors.bg, fg = colors.gray },
      },
      visual = {
        a = { bg = colors.pink, fg = colors.bg, gui = "bold" },
        b = { bg = colors.bg, fg = colors.pink },
        c = { bg = colors.bg, fg = colors.gray },
      },
      replace = {
        a = { bg = colors.red, fg = colors.bg, gui = "bold" },
        b = { bg = colors.bg, fg = colors.red },
        c = { bg = colors.bg, fg = colors.gray },
      },
      command = {
        a = { bg = colors.orange, fg = colors.bg, gui = "bold" },
        b = { bg = colors.bg, fg = colors.orange },
        c = { bg = colors.bg, fg = colors.gray },
      },
      inactive = {
        a = { bg = colors.bg, fg = colors.gray },
        b = { bg = colors.bg, fg = colors.gray },
        c = { bg = colors.bg, fg = colors.gray },
      },
    }

    require('lualine').setup({
      options = {
        theme = custom_theme,
      },
    })
  '';
}
