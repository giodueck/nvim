vim.keymap.set("n", "<C-h>", ":TmuxNavigateLeft<CR>",
  { noremap = true, desc = "Tmux: navigate left", silent = true })
vim.keymap.set("n", "<C-j>", ":TmuxNavigateDown<CR>",
  { noremap = true, desc = "Tmux: navigate down", silent = true })
vim.keymap.set("n", "<C-k>", ":TmuxNavigateUp<CR>",
  { noremap = true, desc = "Tmux: navigate up", silent = true })
vim.keymap.set("n", "<C-l>", ":TmuxNavigateRight<CR>",
  { noremap = true, desc = "Tmux: navigate right", silent = true })
vim.keymap.set("n", "<C-\\>", ":TmuxNavigatePrevious<CR>",
  { noremap = true, desc = "Tmux: navigate previous", silent = true })
