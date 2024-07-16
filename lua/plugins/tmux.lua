vim.keymap.set("n", "<C-h>", ":TmuxNavigateLeft<CR>",
  { noremap = true, desc = "Tmux: navigate left" })
vim.keymap.set("n", "<C-j>", ":TmuxNavigateDown<CR>",
  { noremap = true, desc = "Tmux: navigate down" })
vim.keymap.set("n", "<C-k>", ":TmuxNavigateUp<CR>",
  { noremap = true, desc = "Tmux: navigate up" })
vim.keymap.set("n", "<C-l>", ":TmuxNavigateRight<CR>",
  { noremap = true, desc = "Tmux: navigate right" })
vim.keymap.set("n", "<C-\\>", ":TmuxNavigatePrevious<CR>",
  { noremap = true, desc = "Tmux: navigate previous" })
