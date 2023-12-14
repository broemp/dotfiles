-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("n", "<C-h>", "<Cmd>NvimTmuxNavigateLeft<CR>", { silent = true })
vim.keymap.set("n", "<C-j>", "<Cmd>NvimTmuxNavigateDown<CR>", { silent = true })
vim.keymap.set("n", "<C-k>", "<Cmd>NvimTmuxNavigateUp<CR>", { silent = true })
vim.keymap.set("n", "<C-l>", "<Cmd>NvimTmuxNavigateRight<CR>", { silent = true })
vim.keymap.set("n", "<C-\\>", "<Cmd>NvimTmuxNavigateLastActive<CR>", { silent = true })
vim.keymap.set("n", "<C-Space>", "<Cmd>NvimTmuxNavigateNavigateNext<CR>", { silent = true })

local wk = require("which-key")
--- Harpoon keymaps
wk.register({
  ["<leader>h"] = {
    name = "harpoon",
    a = { "<cmd>lua require('harpoon.mark').add_file()<cr>", "add file" },
    r = { "<cmd>lua require('harpoon.mark').rm_file()<cr>", "remove file" },
    m = { "<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>", "harpoon menu" },
    n = { "<cmd>lua require('harpoon.ui').nav_next()<cr>", "next file" },
    p = { "<cmd>lua require('harpoon.ui').nav_prev()<cr>", "previous file" },
    ["1"] = { "<cmd> lua require('harpoon.ui').nav_file(1)<cr>", "file 1" },
    ["2"] = { "<cmd> lua require('harpoon.ui').nav_file(2)<cr>", "file 2" },
    ["3"] = { "<cmd> lua require('harpoon.ui').nav_file(3)<cr>", "file 3" },
  },
  H = {
    name = "help/debug/conceal",
    c = {
      name = "conceal",
      h = { ":set conceallevel=1<cr>", "hide/conceal" },
      s = { ":set conceallevel=0<cr>", "show/unconceal" },
    },
    t = {
      name = "treesitter",
      t = { vim.treesitter.inspect_tree, "show tree" },
      c = { ":=vim.treesitter.get_captures_at_cursor()<cr>", "show capture" },
      n = { ":=vim.treesitter.get_node():type()<cr>", "show node" },
    },
  },
})

-- Disable Arrow keys
-- Shorten function name
local keymap = vim.keymap.set

local opts = { noremap = true, silent = true }
keymap("n", "<Up>", "<Nop>", opts)
keymap("n", "<Down>", "<Nop>", opts)
keymap("n", "<Left>", "<Nop>", opts)
keymap("n", "<Right>", "<Nop>", opts)
