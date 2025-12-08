{
  imports = [
    ./nix.nix
    ./go.nix
    ./csharp.nix
    ./cpp.nix
    ./docker.nix
    ./yaml.nix
    ./json.nix
    ./python.nix
  ];

  lsp.servers.tombi.enable = true;
  lsp.servers."*" = {
    enable = true;
    config = {
      capabilities = {
        textDocument = {
          semanticTokens = {
            multilineTokenSupport = true;
          };
        };
      };
      root_markers = [
        ".git"
      ];
    };
  };

}
