let
  myim_theme = {
    bg = "#181616";
    fg = "#DBD0C6";
    gray = "#91A4AD";
    green = "#96C2A1";
    blue = "#86BFD0";
    orange = "#F9ADA0";
    pink = "#D9ADD4";
    red = "#D2696C";
    yellow = "#FFD7AA";
  };
in
{
  extraConfigLuaPre = ''
    _G.theme = {
      colors = {
        bg = "${myim_theme.bg}",
        fg = "${myim_theme.fg}",
        gray = "#91A4AD",
        green = "#96C2A1",
        blue = "#86BFD0",
        orange = "#F9ADA0",
        pink = "#D9ADD4",
        red = "#D2696C",
        yellow = "#FFD7AA",
      }
    }
  '';

  extraConfigLua = ''
    -- Clear search highlights when leaving insert mode
    vim.api.nvim_create_autocmd("InsertLeave", {
      pattern = "*",
      callback = function()
        if vim.v.hlsearch == 1 and vim.fn.mode() == "n" then
          vim.cmd("nohlsearch")
        end
      end,
    })
  '';
}
