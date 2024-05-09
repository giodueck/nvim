-- Fuzzy find over current tasks
vim.api.nvim_set_keymap(
  "n",
  "<leader>ta",
  ":Telescope asynctasks all<CR>",
  { noremap = true, desc = "Run a task" }
)
-- require('telescope').extensions.asynctasks.all()

-- Async tasks should open the quickfix-list
vim.g.asyncrun_open = 9
