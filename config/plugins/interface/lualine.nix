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
    -- Custom lualine theme with configurable colors per section
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
