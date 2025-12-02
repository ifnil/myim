{
  globals.mapleader = " ";
  globals.ai_cmp = true;

  keymaps = [
    {
      key = "<C-h>";
      action = "<C-w>h";
      options = { desc = "go to left window"; };
    }
    {
      key = "<C-j>";
      action = "<C-w>j";
      options = { desc = "go to lower window"; };
    }
    {
      key = "<C-k>";
      action = "<C-w>k";
      options = { desc = "go to upper window"; };
    }
    {
      key = "<C-l>";
      action = "<C-w>l";
      options = { desc = "go to right window"; };
    }

    {
      key = "<leader><space>";
      action = "<cmd>FzfLua files <cr>";
      options = { desc = "find files"; };
    }

    {
      key = "<S-h>";
      action = "<cmd>BufferLineCyclePrev<cr>";
      options = { desc = "go to previous buffer"; };
    }
    {
      key = "<S-l>";
      action = "<cmd>BufferLineCycleNext<cr>";
      options = { desc = "go to next buffer"; };
    }

    {
      mode = [ "n" "x" "o" "i" "v" ];
      key = "<C-s>";
      options = { desc = "write file"; };
      action.__raw = ''
        function()
          vim.cmd('stopinsert')
          vim.cmd('write')
        end
      '';
    }

    {
      mode = [ "n" "x" "o" ];
      key = "s";
      options = { desc = "flash jump"; };
      action.__raw = ''
        function()
          require('flash').jump()
        end
      '';
    }

    {
      key = "<Esc><Esc>";
      action = "<cmd>nohlsearch<cr>";
      options = { desc = "clear search highlights"; };
    }
  ];
}
