{
  config = {
    opts = {
      completeopt = "menu,menuone,noselect";
      confirm = true;
      list = true;
      virtualedit = "block";
      cursorline = true;
      cmdheight = 2;
      number = true;
      relativenumber = true;
      tabstop = 2;
      softtabstop = 2;
      shiftwidth = 2;
      expandtab = true;
      smartindent = true;
      wrap = true;
      breakindent = true;
      linebreak = true;
      swapfile = false;
      backup = false;
      undofile = true;
      hlsearch = true;
      incsearch = true;
      splitbelow = true;
      splitright = true;
      ignorecase = true;
      smartcase = true;
      grepprg = "rg --vimgrep";
      grepformat = "%f:%l:%c:%m";
      termguicolors = true;
      updatetime = 50;
      signcolumn = "yes";
      timeoutlen = 250;
      scrolloff = 8;
      mouse = "a";
      encoding = "utf-8";
      fileencoding = "utf-8";
      pumheight = 0;
      sessionoptions = [
        "buffers"
        "curdir"
        "tabpages"
        "winsize"
        "help"
        "globals"
        "skiprtp"
        "folds"
      ];
      clipboard = "unnamedplus";
      illchars = {
        foldopen = "";
        foldclose = "";
        fold = " ";
        foldsep = " ";
        diff = "╱";
        eob = " ";
      };
    };
  };
}
