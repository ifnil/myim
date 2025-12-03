{
  plugins.which-key.settings.spec = [
    [
      {
        __unkeyed = "<leader>c";
        group = "code actions";
      }
    ]
  ];

  keymaps = [
    {
      key = "<leader>cs";
      action = "<cmd>AerialToggle right<cr>";
      options = { desc = "view symbols"; };
    }
  ];
}
