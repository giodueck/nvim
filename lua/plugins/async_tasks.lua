-- Fuzzy find over current tasks
vim.api.nvim_set_keymap(
  "n",
  "<leader>ta",
  ":Telescope asynctasks all<CR>",
  { noremap = true, desc = "List tasks" }
)

-- Repeat last task
vim.api.nvim_set_keymap(
  "n",
  "<leader>tl",
  ":AsyncTaskLast<CR>",
  { noremap = true, desc = "Run last task" }
)
-- require('telescope').extensions.asynctasks.all()

-- Async tasks should open the quickfix-list
vim.g.asyncrun_open = 9
