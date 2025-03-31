return {
  "folke/which-key.nvim",
  opts = {
    spec = {
      {
        mode = { "n", "v" },
        { "<leader>a", group = "LeetCode" },
        { "<leader>am", "<cmd>Leet menu<cr>", desc = "Menu" },
        { "<leader>ai", "<cmd>Leet info<cr>", desc = "Info" },
        { "<leader>at", "<cmd>Leet tabs<cr>", desc = "Tabs" },
        { "<leader>al", "<cmd>Leet lang<cr>", desc = "Change Lang" },
        { "<leader>at", "<cmd>Leet run<cr>", desc = "Test" },
        { "<leader>ax", "<cmd>Leet submit<cr>", desc = "Submit" },
        { "<leader>ao", "<cmd>Leet open<cr>", desc = "Open in Browser" },
        { "<leader>ar", "<cmd>Leet reset<cr>", desc = "Reset" },
        { "<leader>aR", "<cmd>Leet last_submit<cr>", desc = "Reset Last Submission" },
        { "<leader>am", "<cmd>Leet menu<cr>", desc = "Menu" },
        { "<leader>ad", group = "Desc" },
        { "<leader>add", "<cmd>Leet desc toggle<cr>", desc = "Toggle" },
        { "<leader>ads", "<cmd>Leet desc stats<cr>", desc = "Show stats" },
      },
    },
  },
}
