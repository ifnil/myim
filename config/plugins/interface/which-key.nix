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
}
