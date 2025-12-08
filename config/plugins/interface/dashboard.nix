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
        # {
        #   action.__raw = ''
        #     function()
        #       require('fzf-lua').files({ cwd = "~/dotfiles" })
        #     end
        #   '';
        #   desc = " dotfiles ";
        #   group = "Label";
        #   key = "d";
        # }
        {
          action = "enew";
          desc = " new ";
          group = "Number";
          key = "n";
        }
        {
          action = "quit";
          desc = " quit ";
          group = "Number";
          key = "q";
        }
      ];

      week_header = {
        enable = true;
      };
    };

  };
}
