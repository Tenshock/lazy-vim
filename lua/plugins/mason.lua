return {
  "williamboman/mason.nvim",
  opts = {
    ensure_installed = {
      "hyprls",
      "json-lsp",
      "lua-language-server",
      "marksman",
      "nil",
      "nixpkgs-fmt",
      "omnisharp",
      "taplo",
      "yaml-language-server",
    },
    auto_update = true, -- Automatically update tools
  },
}
