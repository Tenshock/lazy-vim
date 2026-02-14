return {
  "mason-org/mason.nvim",
  opts = {
    ensure_installed = {
      "gopls",
      "hyprls",
      "json-lsp",
      "lua-language-server",
      "marksman",
      "nil",
      "nixfmt",
      -- "omnisharp",
      "rust-analyzer",
      "taplo",
      "vtsls",
      "yaml-language-server",
    },
    auto_update = true,
  },
}
