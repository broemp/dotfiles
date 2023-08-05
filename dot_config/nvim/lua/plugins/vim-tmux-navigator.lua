return {
  { "christoomey/vim-tmux-navigator" },
  keys = {
    { "<C-h>", "<cmd> TmuxNavigateLeft<CR>", desc = "Move to left pane" },
    { "<C-l>", "<cmd> TmuxNavigateRight<CR>", desc = "Move to right pane" },
    { "<C-j>", "<cmd> TmuxNavigateDown<CR>", desc = "Move to down pane" },
    { "<C-k>", "<cmd> TmuxNavigateUp<CR>", desc = "Move to uo pane" },
  },
}
