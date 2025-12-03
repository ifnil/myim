{
  imports = [
    ./core

    ./interface/lualine.nix
    ./interface/bufferline.nix
    ./interface/which-key.nix
    ./interface/noice.nix
    ./interface/colorscheme.nix
    ./interface/snacks.nix
    ./interface/blankline.nix
    ./interface/dashboard.nix

    ./navigation/neo-tree.nix
    ./navigation/fzf-lua.nix

    ./editing/mini.nix
  ];

  plugins.commentary.enable = true;
  plugins.dial.enable = true;
  plugins.aerial.enable = true;
  plugins.yanky.enable = true;
  plugins.flash.enable = true;
  plugins.web-devicons.enable = true;
}
