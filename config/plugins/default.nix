{
  imports = [
    ./core

    ./interface/lualine.nix
    ./interface/bufferline.nix
    ./interface/which-key.nix
    ./interface/noice.nix
    ./interface/colorscheme.nix
    ./interface/snacks.nix

    ./navigation/neo-tree.nix
    ./navigation/fzf-lua.nix

    ./editing/mini.nix
  ];

  plugins.yanky.enable = true;
  plugins.flash.enable = true;
  plugins.web-devicons.enable = true;
}
