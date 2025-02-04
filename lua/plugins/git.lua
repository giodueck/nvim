-- [[ Vim Fugitive ]]
vim.api.nvim_set_keymap(
  "n",
  "<leader>gb",
  ":Git blame<CR>",
  { noremap = true, desc = 'Git Blame', silent = true }
)

vim.api.nvim_set_keymap(
  "n",
  "<leader>gs",
  ":Git<CR>",
  { noremap = true, desc = 'Git Status', silent = true }
)

vim.api.nvim_set_keymap(
  "n",
  "<leader>gl",
  ":Git log --oneline<CR>",
  { noremap = true, desc = 'Git Log --oneline', silent = true }
)

vim.api.nvim_set_keymap(
  "n",
  "<leader>gL",
  ":Git log<CR>",
  { noremap = true, desc = 'Git Log', silent = true }
)

vim.api.nvim_set_keymap(
  "n",
  "<leader>gf",
  ":lua vim.cmd(\"Git log --oneline --follow %\")<CR>",
  { noremap = true, desc = 'Git Log --oneline Follow current file', silent = true }
)

vim.api.nvim_set_keymap(
  "n",
  "<leader>gF",
  ":lua vim.cmd(\"Git log --follow %\")<CR>",
  { noremap = true, desc = 'Git Log Follow current file', silent = true }
)

vim.api.nvim_set_keymap(
  "n",
  "<leader>gc",
  ":Git commit -m '",
  { noremap = true, desc = 'Git Commit', silent = true }
)

vim.api.nvim_set_keymap(
  "n",
  "<leader>gps",
  ":Git push<CR>",
  { noremap = true, desc = 'Git Push', silent = true }
)

vim.api.nvim_set_keymap(
  "n",
  "<leader>gpl",
  ":Git pull<CR>",
  { noremap = true, desc = 'Git Pull', silent = true }
)

vim.api.nvim_set_keymap(
  "n",
  "<leader>gmc",
  ":Gvdiffsplit!<CR>",
  { noremap = true, desc = 'Git Merge Conflict: 3 way diff split', silent = true }
)

vim.api.nvim_set_keymap(
  "n",
  "<leader>ga",
  ":Git add % | doautocmd BufWritePost<CR>",
  { noremap = true, desc = 'Git Add current file', silent = true }
)
