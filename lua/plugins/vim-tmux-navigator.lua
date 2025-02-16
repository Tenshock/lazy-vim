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
    { "<M-Down>", "<cmd>TmuxNavigateDown<cr>" },
    { "<M-Left>", "<cmd>TmuxNavigateLeft<cr>" },
    { "<M-Up>", "<cmd>TmuxNavigateUp<cr>" },
    { "<M-Right>", "<cmd>TmuxNavigateRight<cr>" },
    { "<c-\\>", "<cmd>TmuxNavigatePrevious<cr>" },

    -- Visual Mode Fix: Ensure It Works Without Pressing Twice
    { "<M-Down>", "<Esc><cmd>TmuxNavigateDown<CR>gv", mode = "v" },
    { "<M-Left>", "<Esc><cmd>TmuxNavigateLeft<CR>gv", mode = "v" },
    { "<M-Up>", "<Esc><cmd>TmuxNavigateUp<CR>gv", mode = "v" },
    { "<M-Right>", "<Esc><cmd>TmuxNavigateRight<CR>gv", mode = "v" },
  },
}
