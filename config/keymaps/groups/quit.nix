{
  plugins.which-key.settings.spec = [
    [
      {
        __unkeyed = "<leader>q";
        group = "quit";
      }
    ]
  ];

  keymaps = [
    {
      key = "<leader>qq";
      action = "<cmd>quit<cr>";
      options = { desc = "quit"; };
    }
    {
      key = "<leader>qa";
      action = "<cmd>qa<cr>";
      options = { desc = "quit all"; };
    }
    {
      key = "<leader>qQ";
      action = "<cmd>qa!<cr>";
      options = { desc = "quit all (force)"; };
    }
  ];
}
