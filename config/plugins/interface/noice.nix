{
  plugins.noice = {
    enable = true;
    settings = {
      presets = {
        bottom_search = true;
        command_palette = true;
        long_message_to_split = true;
      };

      redirect = {
        filter = {
          event = "msg_show";
        };

        view = "popup";
      };

      views = {
        cmdline_popup = {
          border = {
            style = "single";
          };
        };

        popupmenu = {
          border = {
            style = "single";
          };
        };
      };
    };
  };
}
