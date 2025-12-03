{
  plugins.which-key.settings.spec = [
    [
      {
        __unkeyed = "<leader>x";
        group = "diagnostics";
      }
    ]
  ];

  keymaps = [
    {
      key = "<leader>xx";
      action = "<cmd>Trouble diagnostics toggle<cr>";
      options = {
        desc = "diagnostics";
      };
    }
    {
      key = "<leader>xX";
      action = "<cmd>Trouble diagnostics toggle filter.buf=0<cr>";
      options = {
        desc = "buffer diagnostics";
      };
    }
    {
      key = "<leader>xL";
      action = "<cmd>Trouble loclist toggle<cr>";
      options = {
        desc = "locations";
      };
    }
    {
      key = "<leader>xQ";
      action = "<cmd>Tourble qflist toggle<cr>";
      options = {
        desc = "quickfixes";
      };
    }
  ];
}
