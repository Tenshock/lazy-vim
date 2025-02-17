return {
  "christoomey/vim-tmux-navigator",
  cmd = {
    "TmuxNavigateLeft",
    "TmuxNavigateDown",
    "TmuxNavigateUp",
    "TmuxNavigateRight",
    "TmuxNavigatePrevious",
    "TmuxNavigatorProcessList",
  },
  keys = {
    -- Normal & Insert Mode Mappings
    { "<C-j>", "<cmd>TmuxNavigateDown<cr>" },
    { "<C-l>", "<cmd>TmuxNavigateLeft<cr>" },
    { "<C-k>", "<cmd>TmuxNavigateUp<cr>" },
    { "<C-h>", "<cmd>TmuxNavigateRight<cr>" },
    { "<c-\\>", "<cmd>TmuxNavigatePrevious<cr>" },

    -- Visual Mode Fix: Ensure It Works Without Pressing Twice
    { "<C-j>", "<Esc><cmd>TmuxNavigateDown<CR>gv", mode = "v" },
    { "<C-l>", "<Esc><cmd>TmuxNavigateLeft<CR>gv", mode = "v" },
    { "<C-k>", "<Esc><cmd>TmuxNavigateUp<CR>gv", mode = "v" },
    { "<C-h>", "<Esc><cmd>TmuxNavigateRight<CR>gv", mode = "v" },
  },
}
