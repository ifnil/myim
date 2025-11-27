{
  # autogroups.mini_indentscope.clear = true;
  # autocmd = [
  #   {
  #     event = "filetype";
  #     pattern = [
  #       "dashboard"
  #       "neo-tree"
  #       "fzf"
  #       "help"
  #       "lazy"
  #     ];
  #     group = "mini_indentscope";
  #     callback.__raw = ''
  #       function()
  #         vim.b.miniindentscope_disable = true
  #       end
  #     '';
  #   }
  # ];
}
