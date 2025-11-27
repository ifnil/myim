{ pkgs, ... }:
{
  extraPlugins = [
    (pkgs.vimUtils.buildVimPlugin {
      name = "thorn.nvim";
      src = pkgs.fetchFromGitHub {
        owner = "jpwol";
        repo = "thorn.nvim";
        rev = "889b3841af377d560cc84e2ea52f116d56727212";
        hash = "sha256-/Fbqrx3HAeWw3taxORkMZoy4TY1cokfWdc3YCay0mfI=";
      };
    })
  ];

  extraConfigLua = ''
    require("thorn").setup({
      theme = "dark",
      background = "cold",
      transparent = true,
      terminal = true,
      styles = {
        comments = "italic",
        diagnostics = "underline",
      },
    })
    vim.cmd.colorscheme("thorn")
  '';
}
