return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      vtsls = {
        settings = {
          typescript = {
            tsserver = {
              maxTsServerMemory = 8192,
              nodePath = vim.fn.exepath("node"),
            },
            preferences = {
              includePackageJsonAutoImports = "off",
            },
          },
          javascript = {
            tsserver = {
              maxTsServerMemory = 8192,
              nodePath = vim.fn.exepath("node"),
            },
            preferences = {
              includePackageJsonAutoImports = "off",
            },
          },
        },
      },
    },
  },
}
