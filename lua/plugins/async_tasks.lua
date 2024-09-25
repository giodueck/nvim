-- Fuzzy find over current tasks
vim.api.nvim_set_keymap(
  "n",
  "<leader>ta",
  ":Telescope asynctasks all<CR>",
  { noremap = true, desc = "List tasks", silent = true }
)

-- Repeat last task
vim.api.nvim_set_keymap(
  "n",
  "<leader>tl",
  ":AsyncTaskLast<CR>",
  { noremap = true, desc = "Run last task", silent = true }
)
-- require('telescope').extensions.asynctasks.all()

-- Cancel running task
vim.api.nvim_set_keymap(
  "n",
  "<leader>tq",
  ":AsyncStop<CR>",
  { noremap = true, desc = "Stop running task", silent = true }
)

-- Async tasks should open the quickfix-list
vim.g.asyncrun_open = 9
