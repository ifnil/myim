{
  plugins = {
    neo-tree = {
      enable = true;
      settings = {
        diagnostics.enable = true;
        git_status.enable = true;
        enable_modified_markers = true;
        enable_refresh_on_write = true;

        close_if_last_window = true;
        popup_border_style = "single";

        buffers = {
          bind_to_cwd = false;
        };

        filesystem = {
          follow_current_file = {
            enabled = true;
            leave_dirs_open = true;
          };
        };

        window = {
          mappings = {
            "<space>" = "none";
            "<cr>" = "open";
            "o" = "open";
            "l" = "open";
            "h" = "close_node";
          };
        };
      };
    };
  };

  keymaps = [
    {
      mode = [ "n" ];
      key = "<leader>e";
      action = "<cmd>Neotree toggle<cr>";
      options = {
        desc = "open file tree";
      };
    }
  ];
}
