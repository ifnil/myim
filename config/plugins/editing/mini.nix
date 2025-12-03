{
  plugins.mini.enable = true;
  plugins.mini.modules = {
    ai.enable = true;
    icons.enable = true;
    pairs.enable = true;
    hipatterns.enable = true;

    indentscope = {
      options = {
        try_as_border = true;
      };

      symbol = "│";
    };

    surround = {
      mappings = {
        add = "gsa";
        delete = "gsd";
        find = "gsf";
        find_left = "gsf";
        highlight = "gsh";
        replace = "gsr";
        update_n_lines = "gsn";
      };
    };
  };
}
