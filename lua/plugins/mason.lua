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
      "taplo",
      "vtsls",
      "yaml-language-server",
    },
    auto_update = true, -- Automatically update tools
  },
}
