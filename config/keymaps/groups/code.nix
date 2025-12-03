{
  plugins.which-key.settings.spec = [
    [
      {
        __unkeyed = "<leader>c";
        group = "code";
      }
    ]
  ];

  keymaps = [
    {
      key = "<leader>cs";
      action = "<cmd>AerialToggle right<cr>";
      options = {
        desc = "symbol viewer";
      };
    }
    {
      key = "<leader>cl";
      action = "<cmd>Trouble lsp toggle focus=false win.position=right<cr>";
      options = {
        desc = "lsp definitions/references";
      };
    }
  ];
}
