{
  plugins.which-key.settings.spec = [
    [
      {
        __unkeyed = "<leader>s";
        group = "session";
      }
    ]
  ];

  keymaps = [
    {
      key = "<leader>ss";
      action = "<cmd>AutoSession save<cr>";
      options = { desc = "save session"; };
    }
    {
      key = "<leader>sr";
      action = "<cmd>AutoSession restore<cr>";
      options = { desc = "restore session"; };
    }
  ];
}
