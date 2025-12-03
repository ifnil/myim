{
  plugins.which-key.settings.spec = [
    [
      {
        __unkeyed = "<leader>f";
        group = "find";
      }
    ]
  ];

  keymaps = [
    {
      key = "<leader>ff";
      action = "<cmd>FzfLua files<cr>";
      options = {
        desc = "Find Files";
      };
    }
    {
      key = "<leader>fg";
      action = "<cmd>FzfLua live_grep<cr>";
      options = {
        desc = "Live Grep";
      };
    }
    {
      key = "<leader>fb";
      action = "<cmd>FzfLua buffers<cr>";
      options = {
        desc = "Find Buffers";
      };
    }
    {
      key = "<leader>fh";
      action = "<cmd>FzfLua help_tags<cr>";
      options = {
        desc = "Help Tags";
      };
    }
    {
      key = "<leader>fo";
      action = "<cmd>FzfLua oldfiles<cr>";
      options = {
        desc = "Recent Files";
      };
    }
    {
      key = "<leader>fc";
      action = "<cmd>FzfLua commands<cr>";
      options = {
        desc = "Commands";
      };
    }
  ];
}
