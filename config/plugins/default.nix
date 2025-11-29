{
  imports = [
    ./core

    ./interface/lualine.nix
    ./interface/bufferline.nix
    ./interface/which-key.nix
    ./interface/noice.nix
    ./interface/colorscheme.nix
    ./interface/icons.nix
    ./interface/snacks.nix

    ./navigation/neo-tree.nix
  ];

  plugins.yanky.enable = true;
  plugins.flash.enable = true;
}
