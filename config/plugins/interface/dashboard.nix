{
  plugins.dashboard.enable = true;
  plugins.dashboard.settings = {
    change_to_vcs_root = true;
    disable_at_vimenter = false;

    theme = "hyper";

    config = {
      footer = [
        ""
        "made with :3"
        ""
      ];
      header = [
        "███╗   ██╗██╗██╗  ██╗██╗   ██╗██╗███╗   ███╗"
        "████╗  ██║██║╚██╗██╔╝██║   ██║██║████╗ ████║"
        "██╔██╗ ██║██║ ╚███╔╝ ██║   ██║██║██╔████╔██║"
        "██║╚██╗██║██║ ██╔██╗ ╚██╗ ██╔╝██║██║╚██╔╝██║"
        "██║ ╚████║██║██╔╝ ██╗ ╚████╔╝ ██║██║ ╚═╝ ██║"
        "╚═╝  ╚═══╝╚═╝╚═╝  ╚═╝  ╚═══╝  ╚═╝╚═╝     ╚═╝"
      ];
      mru = {
        limit = 5;
      };

      project = {
        enable = true;
      };

      shortcut = [
        {
          action.__raw = "function(path) vim.cmd('FzfLua files') end";
          desc = " files ";
          group = "Label";
          icon_hl = "@variable";
          key = "f";
        }
        {
          action.__raw = ''
            function()
              require('fzf-lua').files({ cwd = "~/dotfiles" })
            end
          '';
          desc = " dotfiles ";
          group = "Number";
          key = "d";
        }
        {
          action = "quit";
          desc = " quit ";
          group = "Label";
          key = "q";
        }
      ];

      week_header = {
        enable = true;
      };
    };

  };
}
