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
}
